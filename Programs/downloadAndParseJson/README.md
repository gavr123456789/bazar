Inspired by babashka (Clojure scripting)
https://github.com/babashka/babashka/blob/master/examples/README.md#fetch-latest-github-release-tag

It using my own json parser from LittleLibs.  

```Clojure
(require '[clojure.java.shell :refer [sh]]
         '[cheshire.core :as json])

(defn babashka-latest-version []
  (-> (sh "curl" "https://api.github.com/repos/babashka/babashka/tags")
      :out
      (json/parse-string true)
      first
      :name))

(babashka-latest-version) ;;=> "v0.0.73"
```

```Scala
x = {"curl" "https://api.github.com/repos/babashka/babashka/tags"} runToString
x toJson first atKey: "name", echo
```
