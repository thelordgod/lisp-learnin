(setq *print-case* :capitalize)

(defparameter *heroes*
  '((Superman (Clark Kent))
	(Flash (Barry Allen))
	(Batman (Bruce Wayne))))

;;;(format t "Superman data ~a ~%" (assoc 'superman *heroes*))
;;;(format t "Superman is ~a ~%" (cadr (assoc 'superman *heroes*)))

(defparameter *hero-size*
  '((Superman (6ft 3in) (230lbs))
	(Flash (6ft 0in) (190lbs))
	(Batman (6ft 2in) (210lbs))))

(defun get-hero-data (size)
  (format t "~a ~%"
		  `(,(caar size) is ,(cadar size) and ,(cddar size))))

(get-hero-data *hero-size*)
