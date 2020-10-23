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
; function to find intersections with let 
(defun setintersect2 (set1 set2)
    (if (null set1) 
        nil
        (let (
            (cur (car set1))
            (rst (setintersect2 (cdr set1) set2)))
        (if (member cur set2) 
            (cons cur rst)
            rst))))
(print (setintersect '(a b c d) '(a d)))
(print (setintersect2 '(a b c d) '(a d)))

; function to find difference between sets
; set1 - set2
(defun diff (set1 set2)
    (cond 
        ((null set1) nil)
        ((null set2) set1)
        (t (let ((cur (car set1)) (rst (diff (cdr set1) set2)))
            (cond 
                ((member cur set2) rst)
                (t (cons cur rst)))))))
(print (diff '(a b c) '(a d e f)))

; function to determine set symmetric difference
; ?
(defun setsymetricdiff (set1 set2)
    (setunion
        (diff set1 set2)
        (diff set2 set1)))
(print (setsymetricdiff '(a b c) '(c e)))

; Bags
; like a set, order of elements unimportant
; unlike a set, repetions are allowed
; {a, b, b, c} = {c, a, b, b}
; {a, b c} !+ {c, a, b, b}

; function to convert bags to sets
; essentially remove the repetitions
(defun bag2set (set)
    (cond  
        ((null set) nil)
        ((member (car set) (cdr set)) (bag2set (cdr set)))
        (t (cons (car set) (bag2set (cdr set))))))
(print (bag2set '(a b b c d e f c e)))

; tuple
; unlike sets and bags, order matters
; unlike a set, reptitions are allowed
; (a, b, b, c) != (c, a, b, b)
; (a, b,, c) != (c, a, b, b)

; trees
; <atom, <l - list>,<r - list>>
; can be technically written in one line
'(40                   ; root
    (30                ; root of left subtre
        (25 () ())
        (35 () ())
    )
    (60                ; root of right subtree
        (50 () ())
        ()
    )
)

; accessing parts of the tree
; car and cdrs
; there are built in functions to chain these
(print (car 
    '(40                   ; root
        (30                ; root of left subtre
            (25 () ())
            (35 () ())
        )
        (60                ; root of right subtree
            (50 () ())
            ()
        )
    )
))