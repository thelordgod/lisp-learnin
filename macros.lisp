(setq *print-case* :capitalize)

(defmacro ifit (condition &rest body)
  `(if, condition (progn ,@body) (format t "Can't drive ~%")))

(setf *age* 11)

(ifit (>= *age* 16)
	  (print "You are 16 or older")
	  (print "Time to drive")
	  (terpri))

(defun add (num1 num2)
  (let ((sum (+ num1 num2)))
	(format t "~a + ~a = ~a ~%" num1 num2 sum)))

(defmacro letx (var val &rest body)
  `(let ((,var , val)) ,@body))

(defun subtract (num1 num2)
  (letx dif (- num1 num2)
	(format t "~a - ~a = ~a ~%" num1 num2 dif)))

(subtract 10 7)


	  
