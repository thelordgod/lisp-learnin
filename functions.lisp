(setq *print-case* :capitalize)

(defun get-avg (num-1 num-2)
  (/ (+ num-1 num-2) 2))

(format t "Avg 10 & 50 = ~a ~%" (get-avg 10 50))

(defun print-list (w x &optional y z)
  (format t "List = ~a ~%" (list w x y z)))

(print-list 1 2 3)

(defvar *total* 0)

(defun sum (&rest nums)
  (dolist (num nums)
	(setf *total* (+ *total* num)))
  (format t "Sum = ~a ~%" *total*))

(sum 1 2 3 4 5 23 123)

(defun print-list-new (&optional &key x y z)
  (format t "List: ~a ~%" (list x y z)))

(print-list-new :x 1 :y 2)

(defun differnece (num1 num2)
  (return-from differnece(- num1 num2)))

(format t "10 - 2 = ~a ~%" (differnece 10 2))

(format t "A number ~a ~%" (mapcar #'numberp '(1 3 2 f g)))

(flet ((double-it (num)
	(* num 2 ))
	(triple-it (num)
	(* num 3)))
  (format t "double & triple 10 = ~d~%" (triple-it(double-it 10))))

(labels ((double-it (num)
					(* num 2))
  (double-triple-it (num)
			 (* (double-it num) 3)))
	(format t "doubletriple of 10 is ~d~%" (double-triple-it 10)))


(defun powers (num)
  (values (expt num 2) (expt num 3)))

(multiple-value-bind (a b) (powers 2)
  (format t "2^2 = ~d 2^3 = ~d~%" a b))

(defun times3 (x) (* 3 x))
(defun times4 (x) (* 4 x))

(defun multiples (mult-func max-num)
  (dotimes (x max-num)
	(format t "~d : ~d ~%" x (funcall mult-func x))))

(multiples #'times3 10)
(multiples #'times4 10)

