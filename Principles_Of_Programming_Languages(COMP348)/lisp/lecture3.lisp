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