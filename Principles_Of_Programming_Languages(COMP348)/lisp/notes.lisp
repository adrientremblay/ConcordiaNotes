(print `lists)
(print `()) ; empty list
(print  `(1 3 5 7)) ; list of four elements
(print `((1 2) (3 4))) ; list of two elements: two other lists
(print `(((1 2) (3 4)))) ; list of one element which is a list with two lists inside it
(print `cons)
(print (cons `a (cons (cons `b (cons `c ())) (cons `d (cons `e ())))))
(print (cons (+ 2 3) `(b c)))
(print (cons `(+ 2 3) `(b c)))

(print `expressions)
; (function-name arguments)
(print (- 14 (* 2 3))) ; 14 - 2 * 3
(print (+ 1 2 3 4)) ; 1 + 2 + 3 + 4
(print (< 1 3 2)) ; 1 < 3 and 3 < 1
; prohibiting expression evaluation
(print (/ (* 2 6) 3)) ; returns 4
(print `(/ (* 2 6) 3)) ; returns (/ (* 2 6) 3)

(print `boolean_operators)
; and or not
; prexix notation
(let ((x 5))
(print (or (< x 2) (> x 3)))) ; or will short circuit if it can