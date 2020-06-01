(defpackage meq
  (:use :cl))
(in-package :meq)

(defmacro with-multiple-eq (&rest args)
  `(and ,@(mapcar #'(lambda (x) (eq (first args) x)) (rest args))))

(defmacro with-multiple-eql (&rest args)
  `(and ,@(mapcar #'(lambda (x) (eql (first args) x)) (rest args))))

(defmacro with-multiple-equal (&rest args)
  `(and ,@(mapcar #'(lambda (x) (equal (first args) x)) (rest args))))

(defmacro with-multiple-equalp (&rest args)
  `(and ,@(mapcar #'(lambda (x) (equalp (first args) x)) (rest args))))

(with-multiple-eq 1 1 1)
(with-multiple-eq 2 1 1)
