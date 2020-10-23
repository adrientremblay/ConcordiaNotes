; STRUCTURES IN LISP

; set
; collection of elements 
; no repetition allowed -> it is ignored if it does happen
; ordering of elements not important
;   two sets are equal if they have the same elements and # elements
; a != {a} != {{a}}

; function to determing if set1 is a subset of set2
(defun issubsetp (set1 set2)
    (if (null set1)
        t
        (if (member (car set1) set2)
            (issubsetp (cdr set1) set2)
            nil)))

; function to find set unions
(defun setunion (set1 set2)
    (if (null set1) set2 
        (if (null set1) set1 
            (if (member (car set1) set2) (setunion (cdr set1) set2)
                (cons (car set1) (setunion (cdr set1) set2))))))
; version from the slides
(defun setunion2 (set1 set2)
    (cond
        ((null set1) set2)
        ((null set2) set1)
        ((member (car set1) set2) (setunion2 (cdr set1) set2))
        (t (cons (car set1) (setunion2 (cdr set1) set2)))))
; version using let
(defun setunion3 (set1 set2)
    (cond
        ((null set1) set2)
        ((null set2) set1)
        (t (let ((nextunion (setunion3 (cdr set1) set2)) (cur (car set1)))
            (cond 
                ((member cur set2) nextunion)
                (t (cons cur nextunion)))))))
; version that preserves order 
(defun helper (set1 set2) 
    (cond 
        ((or (null set2) (null set1)) nil)
        ((member (car set2) set1) (helper set1 (cdr set2)))
        (t (cons (car set2) (helper set1 (cdr set2))))))
(defun setunion4 (set1 set2)
    (append set1 (helper set1 set2)))
(print (setunion '(a b c d) '(a d)))
(print (setunion2 '(a b c d) '(a d)))
(print (setunion3 '(a b c d) '(a d)))
(print (setunion4 '(a b c d) '(a d)))

; function to find intersections
(defun setintersect (set1 set2)
    (cond 
        ((null set1) nil)
        ((member (car set1) set2) (cons (car set1) (setintersect (cdr set1) set2)))
        (t (setintersect (cdr set1) set2))))
(print (setintersect '(a b c d) '(a d)))
