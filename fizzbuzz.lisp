(setq *print-case* :capitalize)

(setq fizzDict
	  '((3 . "Fizz")
		(5 . "Buzz")))

;;;(loop for div in fizzDict do
;;;	  (format t "~a ~%" (car div)))

(defun getFizzBuzzString(num)
  (defparameter result "")
  (loop for div in fizzDict do
		(when (= 0 (mod num (car div)))
		  (concatenate 'result (cdr div))))
  (when (= "" result)
	(print num))
  (format t "~a ~%" result))

(loop for x from 1 to 100 do (getFizzBuzzString x))
