(setq *print-case* :capitalize)

(setq fizzDict
	  '((3 3. "Fizz")
		(5 5. "Buzz")
		(7 7. "Bazz")
		(11 11. "Bezz")
		(19 19. "Bizz")
   ))

 (defun getFizzBuzzString(num)
  (setq result "")
  (loop for x in fizzDict do
    (when (= num (cadr x))
      (setq result (concatenate 'string result (caddr x)))
        (setf (cadr x) (+ (cadr x) (car x)))))
  (when (string-equal result "")
    (print num))
  (unless (string-equal result "")
    (print result)))

(loop for x from 1 to 100 do (getFizzBuzzString x))
