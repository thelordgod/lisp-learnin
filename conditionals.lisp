
(setq *print-case* :capitalize)

(defvar *age* 18)
(defvar *num-3* 5)

;;;(defun get-school (age)
;;;  (case age
;;;	(5 (print "Kindergarten"))
;;;	(6 (print "First Grade"))
;;;	(otherwise (print "middle school"))))
;;;
;;;(get-school *age*)
;;;
;;;(terpri)
;;;
;;;(unless (not (= *age* 18)
;;;  (setf *num-3* 18)
;;;  (format t "go to college you're ~d ~%" *age*))

(cond ( (>= *age* 18)
	   (setf *college-ready* 'yes)
	   (format t "Ready for college ~%"))
	  ( (< *age* 18)
	   (setf *college-ready* 'no)
	   (format t "Not ready for college ~%"))
	  (t (format t "default response in case of idk ~%")))
