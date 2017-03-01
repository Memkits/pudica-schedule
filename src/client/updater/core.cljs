
(ns client.updater.core (:require [client.schema :as schema]))

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

(defn updater [store op op-data op-time]
  (case op
    :task/add-before (add-before store op-data op-time)
    :task/add-after (add-after store op-data op-time)
    :task/edit
      (let [[idx text] op-data]
        (update
         store
         :tasks
         (fn [tasks] (update tasks idx (fn [task] (assoc task :text text))))))
    :task/toggle (update-in store [:tasks op-data :done?] not)
    :task/delete
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
                (update :pointer dec))))
    :pointer/touch (assoc store :pointer op-data)
    store))
