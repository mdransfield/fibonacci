;;;; package.lisp

(defpackage #:fibonacci
  (:nicknames #:f)
  (:use #:cl)
  (:export #:fib
	   #:fibs
	   #:fibs-upto))

