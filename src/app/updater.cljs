
(ns app.updater
  (:require [app.schema :as schema]
            [respo.cursor :refer [mutate]]
            [bisection-key.core :refer [bisect max-id min-id]]
            [clojure.string :as string]))

(defn add-after [store task-id op-id op-time]
  (let [base-task (get-in store [:tasks task-id])
        base-sort-id (:sort-id base-task)
        all-sort-ids (->> (:tasks store) (vals) (map :sort-id) (sort))
        sort-id-after (first (filter (fn [x] (> x base-sort-id)) all-sort-ids))
        new-sort-id (bisect base-sort-id (or sort-id-after max-id))
        new-task (merge
                  schema/task
                  {:id op-id, :sort-id new-sort-id, :created-time op-time})]
    (-> store (assoc-in [:tasks op-id] new-task) (update :pointer inc))))

(defn add-before [store task-id op-id op-time]
  (let [base-task (get-in store [:tasks task-id])
        base-sort-id (:sort-id base-task)
        all-sort-ids (->> (:tasks store) (vals) (map :sort-id) (sort))
        sort-id-before (last (filter (fn [x] (< x base-sort-id)) all-sort-ids))
        new-sort-id (bisect (or sort-id-before min-id) base-sort-id)
        new-task (merge
                  schema/task
                  {:id op-id, :sort-id new-sort-id, :created-time op-time})]
    (-> store (assoc-in [:tasks op-id] new-task))))

(defn delete-task [store op-data]
  (let [[task-id idx] op-data]
    (if (= 1 (count (:tasks store)))
      store
      (-> store
          (update :tasks (fn [tasks] (dissoc tasks task-id)))
          (update :pointer (fn [pointer] (if (zero? idx) 0 (dec pointer))))))))

(defn ease-tasks [store op-id op-time]
  (let [done-tasks (->> (:tasks store)
                        (filter
                         (fn [[task-id task]]
                           (and (:done? task) (not (string/blank? (:text task))))))
                        (map
                         (fn [[task-id task]] [task-id (assoc task :archived-time op-time)]))
                        (into {}))]
    (-> store
        (update
         :tasks
         (fn [tasks]
           (let [next-tasks (->> tasks
                                 (filter (fn [[task-id task]] (not (:done? task))))
                                 (into {}))]
             (if (empty? next-tasks)
               (assoc {} op-id (merge schema/task {:id op-id, :created-time op-time}))
               next-tasks))))
        (update :archives (fn [archives] (merge archives done-tasks)))
        (assoc :pointer 0))))

(defn move-task [store op-data]
  (let [[from-id to-id] op-data
        tasks (:tasks store)
        before? (> (get-in tasks [from-id :sort-id]) (get-in tasks [to-id :sort-id]))
        from-task (get tasks from-id)
        to-task (get tasks to-id)
        base-sort-id (:sort-id to-task)
        all-sort-ids (->> (:tasks store) (vals) (map :sort-id))
        new-sort-id (if before?
                      (bisect
                       (or (->> all-sort-ids
                                (filter (fn [x] (< x base-sort-id)))
                                (sort)
                                (last))
                           min-id)
                       base-sort-id)
                      (bisect
                       base-sort-id
                       (or (->> all-sort-ids
                                (filter (fn [x] (> x base-sort-id)))
                                (sort)
                                (first))
                           max-id)))
        new-pointer (.indexOf
                     (sort
                      (conj (disj (set all-sort-ids) (:sort-id from-task)) new-sort-id))
                     new-sort-id)]
    (-> store (assoc-in [:tasks from-id :sort-id] new-sort-id) (assoc :pointer new-pointer))))

(defn swap-tasks [store op-data]
  (let [[from-id to-id new-pointer] op-data]
    (-> store
        (assoc :pointer new-pointer)
        (update
         :tasks
         (fn [tasks]
           (-> tasks
               (assoc-in [from-id :sort-id] (get-in tasks [to-id :sort-id]))
               (assoc-in [to-id :sort-id] (get-in tasks [from-id :sort-id]))))))))

(defn updater [store op op-data op-id op-time]
  (case op
    :states (update store :states (mutate op-data))
    :task/add-before (add-before store op-data op-id op-time)
    :task/add-after (add-after store op-data op-id op-time)
    :task/edit (let [[task-id text] op-data] (assoc-in store [:tasks task-id :text] text))
    :task/toggle
      (update-in
       store
       [:tasks op-data]
       (fn [task]
         (if (:done? task)
           (assoc task :done? false)
           (-> task (assoc :done? true) (assoc :done-time? op-time)))))
    :task/ease (ease-tasks store op-id op-time)
    :task/delete (delete-task store op-data)
    :task/move (move-task store op-data)
    :task/swap (swap-tasks store op-data)
    :pointer/touch (assoc store :pointer op-data)
    :pointer/before (if (zero? (:pointer store)) store (update store :pointer dec))
    :pointer/after
      (if (= (:pointer store) (dec (count (:tasks store)))) store (update store :pointer inc))
    :mark/dragging (assoc store :dragging-id op-data)
    :mark/dropping (assoc store :dropping-id op-data)
    store))
