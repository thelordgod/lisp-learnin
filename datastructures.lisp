(setq *print-case* :capitalize)

(defparameter names (make-array 3))

(setf (aref names 1) 'Bob)

(format t "~a ~%" (aref names 1))

(setf num-array (make-array '(3 3)
	:initial-contents '((3 1 9) (4 12 9) (0 2 1))))

(dotimes (x 3)
  (dotimes (y 3)
	(format t "~a ~%" (aref num-array x y))))

(defparameter people (make-hash-table))
(setf (gethash '102 people) '(Paul Smith))
(setf (gethash '103 people) '(Sam Smith))

(format t "~a ~%" (gethash '102 people))

(maphash #'(lambda (k v) (format t "~a = ~a ~%" k v)) people)

(remhash '103 people)

(defstruct customer name address id)

(setq paulsmith (make-customer
  :name "Paul Smith"
  :address "123 Main"
  :id 1000))

(format t "~a~%" (customer-name paulsmith))
(setf (customer-address paulsmith) "Ass street")

(write paulsmith)
