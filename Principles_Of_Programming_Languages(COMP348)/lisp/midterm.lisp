(defun genlist (&optional (n 10))
    (cond
        ((or (not (integerp n)) (= n 0)) 
            nil)
        (t 
            (append (genlist (- n 1)) (list n)))))
;; (print (genlist 2))
;; (print (genlist 1))
;; (print (genlist 'a))
;; (print (genlist 0))
;; (print (genlist ))

(defun sumlist (lst)
    (cond
        ((null lst) 
            0)
        ((numberp (car lst))
            (+ (car lst) (sumlist (cdr lst))))
        (t 
            (sumlist (cdr lst)))))
;; (print (sumlist '(1 2 3 4)))
;; (print (sumlist '(1 b 3.2 d (100))))
;; (print (sumlist '()))

(defun my-nthcdr (n l)
    (cond
        ((or (not (integerp n)) (< n 0))
            nil)
        ((= n 0) 
            l)
        (t
            (my-nthcdr (- n 1) (cdr l)))))
;; (print (my-nthcdr 2 '(a b c d)))
;; (print (my-nthcdr 0 '(a b c d)))
;; (print (my-nthcdr -1 '(a b c d)))
;; (print (my-nthcdr 5 '(a b c d)))
