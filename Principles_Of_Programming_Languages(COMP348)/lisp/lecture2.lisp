; local variable
(defparameter *pi* 3.14)
(print *pi*)
(defparameter *pi* 3.1415926535)
(print *pi*)

; constant
(defconstant limit 100)
(print limit)

; checks if symbol is in use or not
(print (boundp 'limit)) 
(print (boundp 'meme))

; global variable
(setq place 'canada)
(print place)
(setq place 'montreal) ; change value of global value
(print place)

; eql vs equal
(setf X '(A B C D E))
(setf Y '(A B C D E))
(setf Z X)
(print (eql x y))
(print (equal x y))
(print (eql x z))
(print (equal x z))

; return copy of a list
(copy-list x)

; my own implementation of copy-list
(defun copy-list2 (lst) (if (atom lst) 
  lst
  (cons (car lst) (copy-list2 (cdr lst))))) 
(print (copy-list2 '(a b c)))

; can use setf to modify inner structures
(setf x '(a b c))
(setf (car x) '(a b c))
(print x)
(setf (cdr x) '((x y z)))
(print x)

; loops
(print (loop (print "Inside a loop.")
  (return 7))) ; return will exit the loop and the value becomes the values of the loop form

(let ((n 0))
  (loop 
    (when (> n 3) (return))
    (print n)
    (incf n)))

; dotimes -> simple for loop
; (dotimes (<counter> <limit> <result>) <body>)
(print (dotimes (n 3 "result") (print n) (write (* n n n))))

(print (let (value) ; accumulator
  (dotimes (number 3 value)
     (setq value (cons number value)))))

; code blocks
(print (progn
  (print "hello")
  (+ 1 3)
  ))

(block my-label ; block but can return
  ( format t "Inside a block.")
  (return-from my-label 'Exit) ; because can have nested blocks
  ( format t "Will never see this.")
)

; tagbody -> similar to a goto
(tagbody
  (setq x 0)
  top
  (setf x (+ x 1))
  (format t "~A " x)
  (if (< x 10) (go top)))

; recursive lecture fun
(defun bsequence (n)
  (if (= n 0) '(0) (cons n (bsequence (- n 1)))))
(print (bsequence 10))

; ackermann function
(defun ackermann (m n) 
  (cond ((zerop m) (+ n 1))
  ((zerop n) (ackermann (- m 1) 1))
  (t (ackermann (- m 1) (ackermann m (- n 1))))))
(print (ackermann 3 4))

; our own version of append
(defun append2 (lst1 lst2)
  (if (null lst1) 
    lst2
    (cons (car lst1) (append2 (cdr lst1) lst2))))
(print (append2 '(a b c) '(d e f)))

; our own version of sum
(defun sum2 (lst)
  (if (null lst)
  0
  (+ (car lst) (sum2 (cdr lst)))))
(print (sum2 '(1 2 3 4 5)))

; our own version of last
(defun last2 (lst)
  (if (null (cdr lst))
    (car lst)
    (last2 (cdr lst))))
(print (last2 '(a b c)))

; our own version of reverse
(defun reverse2 (lst)
  (if (null lst)
  '()
  (append (reverse2 (cdr lst)) (list (car lst)))))
(print (reverse2 '(a b c d e)))

; cube list function
(defun cube-list (lst)
  (if (null lst) 
  nil
  (let ((elt (car lst)))
  (cons (* elt elt elt) (cube-list (cdr lst))))))
(print (cube-list '(1 2 3)))

; interleave function
(defun interleave (lst1 lst2)
  (cond ((null lst1) lst2)
  ((null lst2) lst1)
  (t (cons (car lst1) (cons (car lst2) (interleave (cdr lst1) (cdr lst2)))))))
(print (interleave '(a b c) '(d e f g h)))

; remove-first-occurence function
(defun remove-first-occurence (item lst)
  (cond ((eql (car lst) item) (cdr lst))
  ((null lst) nil)
  (t (cons (car lst) (remove-first-occurence item (cdr lst))))))
(print (remove-first-occurence 'v '(a b c v d e v v v)))
(print (remove-first-occurence 'v '(a b c  d e)))

; remove-all-occurences function
(defun remove-all-occurences (item lst)
  (cond ((eql (car lst) item) (remove-all-occurences item (cdr lst)))
  ((null lst) nil)
  (t (cons (car lst) (remove-all-occurences item (cdr lst))))))
(print (remove-all-occurences 'v '(a b c v d e v v v)))
(print (remove-all-occurences 'v '(a b c  d e)))

; merge function (merge sort)
(defun merge2 (lst1 lst2)
  (cond ((null lst1) lst2)
  ((null lst2) lst1)
  ((= (car lst1) (car lst2)) (merge2 (cdr lst1) lst2))
  ((< (car lst1) (car lst2)) (cons (car lst1) (merge2 (cdr lst1) lst2)))
  (t (cons (car lst2) (merge2 lst1 (cdr lst2))))))
(print (merge2 '(3 4 6 8) '(3 4 5 6)))

; max function
(defun max2 (lst)
  (cond ((null (car lst)) nil)
  ((null (cdr lst)) (car lst))
  (t (let ((a (car lst)) 
    (b (max2 (cdr lst))))
    (if (> a b) a b)))))
(print (max2 '(1 5 7 4 8 20 4 6 4)))