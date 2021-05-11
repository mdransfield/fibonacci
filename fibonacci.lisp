;;;; fibonacci.lisp
;;;; Functions to do with the fibonacci sequence

(in-package #:fibonacci)

(defconstant +sqrt5+ (cr:sqrt-r 5))

(defconstant +phi+ (cr:/r (cr:+r 1 +sqrt5+) 2))

(defun fib (n)
  "The Nth number in the fibonacci sequence.
Defined for n >= 0."
  (check-type n (integer 0 *) "A positive integer")
  (values (cr:round-r (cr:/r (cr:expt-r +phi+ n) +sqrt5+))))

(defun fibs (n)
  "The first N numbers in the fibonacci sequence.
Defined for n >= 0."
  (check-type n (integer 0 *) "A positive integer")
  (loop for i from 0 below n
	for n2 = 0 then n1
	for n1 = 1 then x
	for x = 0 then (cond
			 ((= x 0) 1)
			 (t (+ n2 n1)))
	collect x))

(defun fibs-upto (limit)
  "The numbers in the fibonacci sequence up to LIMIT."
  (check-type limit (integer 1 *) "An integer > 0")
  (loop for n2 = 0 then n1
	for n1 = 1 then x
	for x = 0 then (cond
			 ((= x 0) 1)
			 (t (+ n2 n1)))
	when (< x limit)
	  collect x
	while (< x limit)))
