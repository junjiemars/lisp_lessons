(require :asdf)
(push (make-pathname :name nil
                     :type nil
                     :version nil
                     :defaults *load-truename*)
      asdf:*central-registry*)
(load "hi.asd")

(require :hi)

(sb-ext:save-lisp-and-die
 (if (string= "Win32" (software-type))
     "hi.exe"
     "hi")
 :toplevel #'hi:main
 :compression t
 :executable t)

(sb-ext:exit 0)
