
(setq *print-case* :capitalize)

(defvar superman (list :name "Superman" :secret-id "Clark Kent"))
(defvar *hero-list* nil)

(push superman *hero-list*)

(dolist (hero *hero-list*)
  (format t "~{~a : ~a ~}~%" hero))
