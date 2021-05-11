;;;; fibonacci.asd

(asdf:defsystem #:fibonacci
  :serial t
  :description "Fibonacci number functions"
  :author "Martin Dransfield <mdransfield@gmail.com>"
  :license "GNU GPL 3 (see file LICENSE for details)"
  :depends-on (#:computable-reals)
  :components ((:file "package")
               (:file "fibonacci")))

