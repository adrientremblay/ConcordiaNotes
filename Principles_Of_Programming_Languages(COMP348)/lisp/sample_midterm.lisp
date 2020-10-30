; reverses a list
(defun reverse2 (lst) 
    (cond
        ((null (cdr lst)) (list (car lst)))
        (t (append (reverse2 (cdr lst)) (list (car lst))))))
(print (reverse2 '(1 2 3 4)))

; reverses a list and internal lists
(defun reverse3 (lst) 
    (cond
        ((listp (car lst)) (append (reverse3 (cdr lst)) (list (reverse3 (car lst)))))
        ((null (cdr lst)) (list (car lst)))
        (t (append (reverse3 (cdr lst)) (list (car lst))))))
(print (reverse3 '(1 2 3 4)))
(print (reverse3 '(1 2 (3 8) 7)))