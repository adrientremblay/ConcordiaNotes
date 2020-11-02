(write-line "Hello, World!")

;;;; Describe Program
;;; Basic comment

;; intented comment

; comment after line

;; #||
;; Multiline
;; ||#


; (format t "Hello world ~%")
; (print "Whats your name")

; (defvar *name* (read))

; (defun hello-you (*name*)
;   (format t "Hello ~a! ~%" *name*)
; )

; (setq *print-case* :capitalize)

; (hello-you *name*)

;; (+ 5 (- 6 2))

;; (defvar *number* 0)
;; (setf *number* 6)

;; (format t "Number with commas ~:d" 10000000)

;; (print "penis")

;; (cond
;;     ((= 1 1 ) (print "hello"))
;;     ((= 2 2) (print "hello2")))

(defvar sym 'hello)
(defvar num 20)
(defvar str "Hello world")
(defvar lst '(hello 20 "hello world"))