
(setq *print-case* :capitalize)

(cons 'superman 'batman)

(list 'superman 'batman 'flash)

(cons 'aquaman '(superman batman))

(format t "First = ~a ~%" (car '(superman batman aquaman)))
(format t "2nd item = ~a ~%" (cadr '(superman batman aquaman flash joker)))
(format t "4th item = ~a ~%" (cadddr '(superman batman aquaman flash joker)))
(format t "Everything else = ~a ~%" (cdr '(superman batman aquaman)))

(format t "Is a list = ~a ~%" (listp '(ass tits)))
(format t "Is 3 in list = ~a ~%" (if (member 3 '(2 4 89)) 't nil))

(append '(just) '(some) '(random words))

(defparameter *nums* '(2 4 9))
(format t "first item in a list ~a ~%" (nth 0 *nums*))

(push 1281 *nums*)

(format t "first item in a list after push ~a ~%" (nth 0 *nums*))
