;;;; fibonacci.lisp
;;;; Functions to do with the fibonacci sequence

(in-package #:fibonacci)

(defconstant sqrt5 (sqrt 5))
(defconstant phi (/ (1+ sqrt5) 2))

(defun fib (n)
  "Return the Nth number in the fibonacci sequence.
Defined for n >= 0."
  (unless (<= 0 n)
    (error "FIB is only defined for positive n."))
  (round (/ (expt phi n) sqrt5)))

(defun fibs (n)
  "Return the first N numbers in the fibonacci sequence.
Defined for n >= 0."
  (unless (<= 0 n)
    (error "FIBS is only defined for positive n."))
  (loop for i from 0 below n
	for n2 = 0 then n1
	for n1 = 1 then x
	for x = 0 then (cond
			 ((= x 0) 1)
			 (t (+ n2 n1)))
	collect x))

