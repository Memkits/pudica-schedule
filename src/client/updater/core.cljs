
(ns client.updater.core
  (:require [client.schema :as schema] [respo.cursor :refer [mutate]]))

(defn add-before [store idx op-time]
  (update
   store
   :tasks
   (fn [tasks]
     (let [new-task (merge schema/task {:id op-time, :text ""})]
       (cond
         (zero? idx) (into [] (cons new-task tasks))
         :else (into [] (concat (subvec tasks 0 idx) [new-task] (subvec tasks idx))))))))

(defn add-after [store idx op-time]
  (-> store
      (update
       :tasks
       (fn [tasks]
         (let [new-task (merge schema/task {:id op-time, :text ""})]
           (cond
             (= idx (dec (count tasks))) (conj tasks new-task)
             :else
               (into
                []
                (concat (subvec tasks 0 (inc idx)) [new-task] (subvec tasks (inc idx))))))))
      (update :pointer inc)))

(defn move-up [store op-data op-time]
  (let [pointer (:pointer store), head? (zero? pointer)]
    (if head?
      store
      (-> store
          (update
           :tasks
           (fn [tasks]
             (-> tasks
                 (assoc pointer (get tasks (dec pointer)))
                 (assoc (dec pointer) (get tasks pointer)))))
          (update :pointer dec)
          (assoc :shift op-data)))))

(defn move-down [store op-data op-time]
  (let [pointer (:pointer store), tail? (= pointer (dec (count (:tasks store))))]
    (if tail?
      store
      (-> store
          (update
           :tasks
           (fn [tasks]
             (-> tasks
                 (assoc pointer (get tasks (inc pointer)))
                 (assoc (inc pointer) (get tasks pointer)))))
          (update :pointer inc)
          (assoc :shift op-data)))))

(defn delete-task [store op-data op-time]
  (if (= 1 (count (:tasks store)))
    store
    (cond
      (zero? op-data) (update store :tasks (fn [tasks] (subvec tasks 1)))
      (= op-data (dec (count (:tasks store))))
        (-> store
            (update :tasks (fn [tasks] (subvec tasks 0 (dec (count tasks)))))
            (update :pointer dec))
      :else
        (-> store
            (update
             :tasks
             (fn [tasks]
               (into [] (concat (subvec tasks 0 op-data) (subvec tasks (inc op-data))))))
            (update :pointer dec)))))

(defn updater [store op op-data op-time]
  (case op
    :states (update store :states (mutate op-data))
    :task/add-before (add-before store op-data op-time)
    :task/add-after (add-after store op-data op-time)
    :task/edit
      (let [[idx text] op-data]
        (update
         store
         :tasks
         (fn [tasks] (update tasks idx (fn [task] (assoc task :text text))))))
    :task/up (move-up store op-data op-time)
    :task/down (move-down store op-data op-time)
    :task/toggle (update-in store [:tasks op-data :done?] not)
    :task/clear schema/store
    :task/delete (delete-task store op-data op-time)
    :pointer/touch (assoc store :pointer op-data)
    :pointer/before (if (zero? (:pointer store)) store (update store :pointer dec))
    :pointer/after
      (if (= (:pointer store) (dec (count (:tasks store)))) store (update store :pointer inc))
    :shift/set (assoc store :shift op-data)
    store))
