

(setq *print-case* :capitalize)

;;;(defparameter *name* 'fred)
;;;(format t "(eq *name 'fred) = ~d ~%" (eq *name* 'fred))

;;;(format t "(equal 'car 'truck) = ~d ~%" (equal 'car 'truck))
;;;(format t "(equal 10 10) = ~d ~%" (equal 10 10))
;;;(format t "(equal 5.5 5.3) = ~d ~%" (equal 5.5 5.3))
;;;(format t "(equal \"foo\" \"Foo\") = ~d ~%" (equal "foo" "Foo"))
;;;(format t "(equal (list 1 2 3) (list 1 2 3)) = ~d ~%" (equal (list 1 2 3) (list 1 2 3)))

(format t "(equalp 1.0 1) = ~d ~%" (equalp 1.0 1))
(format t "(equalp \"Ass\" \"ass\") = ~d ~%" (equalp "Ass" "ass"))





