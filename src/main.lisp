(defpackage meq
  (:use :cl)
  (:export #:with-multiple-eq
           #:with-multiple-eql
           #:with-multiple-equal
           #:with-multiple-equalp))
(in-package :meq)

(defmacro with-multiple-eq (&rest args)
  `(and ,@(mapcar #'(lambda (x) `(eq ,(first args) ,x)) (rest args))))

(defmacro with-multiple-eql (&rest args)
  `(and ,@(mapcar #'(lambda (x) `(eql ,(first args) ,x)) (rest args))))

(defmacro with-multiple-equal (&rest args)
  `(and ,@(mapcar #'(lambda (x) `(equal ,(first args) ,x)) (rest args))))

(defmacro with-multiple-equalp (&rest args)
  `(and ,@(mapcar #'(lambda (x) `(equalp ,(first args) ,x)) (rest args))))
