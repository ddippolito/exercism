(ns bob
  (require [clojure.string :as str]))

(defn shouting? [sentence]
  (if (= sentence (.toUpperCase sentence)) true false))

(defn questioning? [sentence]
  (if (.endsWith sentence "?") true false))

(defn response-for [sentence]
  (cond
    (str/blank? sentence) "Fine. Be that way!"
    (shouting? sentence) "Woah, chill out!"
    (questioning? sentence) "Sure."
    :else "Whatever."))
