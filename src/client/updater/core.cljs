
(ns client.updater.core (:require [client.schema :as schema]))

(defn updater [store op op-data op-time]
  (case op
    :task/add
      (update
       store
       :tasks
       (fn [tasks] (conj tasks (merge schema/task {:id op-time, :text op-data}))))
    :task/edit
      (let [[idx text] op-data]
        (update
         store
         :tasks
         (fn [tasks] (update tasks idx (fn [task] (assoc task :text text))))))
    :task/toggle (update-in store [:tasks op-data :done?] not)
    :task/delete
      (cond
        (zero? op-data) (update store :tasks (fn [tasks] (subvec tasks 1)))
        (= op-data (dec (count (:tasks store))))
          (update store :tasks (fn [tasks] (subvec tasks 0 (dec (count tasks)))))
        :else
          (update
           store
           :tasks
           (fn [tasks]
             (into [] (concat (subvec tasks 0 op-data) (subvec tasks (inc op-data)))))))
    store))
