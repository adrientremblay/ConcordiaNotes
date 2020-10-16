(print 'lists) ; must use ' character before defining list so it's not executed
(print '()) ; empty list
(print  '(1 3 5 7)) ; list of four elements
(print '((1 2) (3 4))) ; list of two elements: two other lists
(print '(((1 2) (3 4)))) ; list of one element which is a list with two lists inside it

(print 'cons) ; adds one element to front of a list
(print (cons 'a (cons (cons 'b (cons 'c ())) (cons 'd (cons 'e ())))))
(print (cons (+ 2 3) '(b c)))
(print (cons '(+ 2 3) '(b c)))

(print 'list) ; makes a list of all the parameters
(print (list 1 2 'a 3))
(print (list 1 '(2 3) (+ 2 3)))
(print (list 1 '(2 3) (list (+ 2 3) 'b 'c)))

(print 'append) ; combines all elements of given lists into a list
(print (append '(1 2) '(3 4)))
(print (append '(1 2 3) '() '(a) '(5 6)))
(print (append '(1 2 3 '(a b c)) '() '(d) '(4 5)))
(print (append (list 1) '(4 5 6))) ; append function can be used for list concatentation

(print 'car) ; returns first element of list
(print (car '(a s d f)))
(print (car '((a s) d f)))

(print 'cdr) ; returns tail of list (everything not the head)
(print (cdr '(a s d f)))
(print (cdr '((a s) d f)))
(print (car(cdr '(1 (3 5) (7 11)))))

(print 'expressions)
; (function-name arguments)
(print (- 14 (* 2 3))) ; 14 - 2 * 3
(print (+ 1 2 3 4)) ; 1 + 2 + 3 + 4
(print (< 1 3 2)) ; 1 < 3 and 3 < 1
; prohibiting expression evaluation
(print (/ (* 2 6) 3)) ; returns 4
(print '(/ (* 2 6) 3)) ; returns (/ (* 2 6) 3)

(print 'boolean_operators)
; and or not
; prexix notation
(let ((x 5))
(print (or (< x 2) (> x 3)))) ; or will short circuit if it can

(print 'Preticate_Functions)
(print (listp '(a b c)))
(print (listp 7))

(print 'Control_Flow)
; (if testExpression thenExpression elseExpression)
; elseExpression is optional
; cond

(print 'Binding)
(print (let ((x 2) (y 3))
  (+ x y)))
(print (let ((x 1))
            (let ((x (+ x 1)))
                 (+ x x))))
(print (let* ((x 10)
              (y (* 2 x)))
              (* x y)))

(print 'Functions)
; (defun name (formal parameter list)
;   body)
(defun absdiff (x y)
  (if (> x y) 
    (- x y) 
    (- y x)))
(print (absdiff -4 -10))
(defun ispalindrome (list)
  (equal list (reverse list)))
(print (ispalindrome '(1 2 3 3 2 1)))

(print 'Heigher_order_functions)
(print (sort (list 5 0 7 3 9 1 4 13 23) #'>)) ; '#' used to denote a function
(print (mapcar #'* '(2 3) '(10 10))) ;applies operation to each pair 
(print (funcall #'+ 1 2 3 4 5 6)) ; equivalent to (+ 1 3 4 5 6)
(print (apply #'+ 1 2 3 4 5 '(6))) ; equivalent to (+ 1 3 4 5 6) last element has to be a list

(print 'Lambda_functions)
;(lambda (formal parameter list) (body))
(print ((lambda (x) 
  (* x x)) 3))
(print (mapcar (lambda (n) (* n 2)) '(2 3 5 7)))

(print '&rest_parameters)
(defun construct-list (thing &rest args) ; args becomes an array with the rest of the parameters
  (cons thing args))
(print (construct-list 1 2 3 4))

(print '&optional_parameters)
(defun make-quote (thing &optional arg) ; arg is an optional par
  (list thing arg))
(print (make-quote 'a '(b c)))
(print (make-quote 'a ))
(defun make-quote (thing &optional (arg `die)) ;arg is an optional par and it's default is die
  (list thing 'men 'must arg))
(print (make-quote `all))
(print (make-quote `all `serve))

(print '&key_parameters) ; parameters have to be specified to values when calling func
(defun make-pairs (&key a b c d)
  (list (list a b) (list c d)))
(print (make-pairs :a 1 :c 3 :b 2 :d 4))

(print 'returning_a_list)
(defun fn (x)
  (cond
   ((numberp x) #'+)
   ((listp x) #'append)))
(defun combine (&rest args)
  (apply (fn (car args)) args))
(print (combine 2 3 4))
(print (combine `(a b) `(c d)))

(print 'function_composition)
(defun consr (lst e) ; adds e to right of lst (USES RECURSION)
  (if (null lst) (list e) 
    (cons (car lst) (consr (cdr lst) e))))
(print (consr `(a b c d) `e))
(defun product (list1 list2) ; also uses recursion
  (if (or (null list1) (null list2))
    nil
  (let ((x (* (car list1) (car list2))))
    (cons x (product (cdr list1) (cdr list2))))))
(print (product '(1 2 3) '(4 5 6)))
(print (product '(1 2 3) '(4 5 6 1))) ; the extra var is ignored

(print `common_build_in_functions)
(print (abs -3)) ; gives absolute value
(print (atom 'a)) ; returns true if argument is an atom
(print (atom ())) ; returns true if argument is an atom
(print (atom `(a b c)))
(print (equal 'a 'a))
(print (equal 3 3.0)) ; NOT EQUAL
(print (equal 'a '(a))) ; NOT EQUAL
(print (evenp 3)) ; arg must be an integer
(print (evenp 2))
(print (integerp 2))
(print (integerp 2.0))
(print (listp '())) ; T
(print (null '())) ; T
(print (numberp 0))
(print (oddp -2))
(print (plusp 2)) ; positive number