
;; use (asdf:require-system :hi) or (ql:quickload :hi) to load.

(asdf:defsystem :hi
  :description "a hello world common lisp project"
  :version "1.0"
  :author "南山竹"
  :depends-on ("split-sequence")
  :components ((:file "package")
               (:file "hi" :depends-on ("package"))))
               
                      
