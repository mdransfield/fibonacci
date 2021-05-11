;;;; package.lisp

(defpackage #:fibonacci
  (:nicknames #:f)
  (:use #:cl #:computable-reals)
  (:export #:+sqrt5+
	   #:+phi+
	   #:fib
	   #:fibs
	   #:fibs-upto))

