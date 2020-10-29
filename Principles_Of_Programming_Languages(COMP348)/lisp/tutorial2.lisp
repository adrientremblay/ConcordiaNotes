;; makes a lead
(defun make-bin-tree-leaf (e)
    (list e () ()))
(print (make-bin-tree-leaf 1))

;; makes a node
(defun make-bin-tree-node (e l r)
    (list e l r))
(print (make-bin-tree-node 1 () ()))

(defun bin-tree-leaf-element (l)
    (car l))

(defun bin-tree-node-element (n)
    (first n))
(print (bin-tree-node-element '(4 (3 () ()) (10 () ()))))
; Woohoo!! first, second, third functions exist

;...

(defun bin-tree-leaf-p (n)
    (if 
        (and 
            (null (second n))
            (null (third n)))
        t
        nil
    ))

; making a binary tree
(print (make-bin-tree-node '*
    (make-bin-tree-node '+
        (make-bin-tree-leaf 2)
        (make-bin-tree-leaf 3))
    (make-bin-tree-node '-
        (make-bin-tree-leaf 7)
        (make-bin-tree-leaf 8))))
