(defparameter a 1)
(print a)

(print 'exercise_one)
(print (* 2  (cos 0) (+ 4 6)))

(print 'exercise_two)
(print (not (and (= (+ 1 2) 3) (< 4 3) (= (+ 2 3) 7))))


(print 'exercise_three)
(defparameter PETS '(dog cat) )

(print 'exercise_three)
(print (cons 'a (cons (cons 'b (cons 'c ())) ())))


(print 'exercise_ten)
(defun evenf (n) (if (zerop (rem n 2)) T nil))
(print (evenf 10))
(print (evenf 9))


(print 'exercise_eleven)
(defun oddf (n) (if (equal (rem n 2) 1) T nil))
(print (oddf 10))
(print (oddf 9))


(print 'exercise_ten)
(defun power (base exp) (if (= exp 0) 1 (* base (power base (- exp 1)))))
(print (power 2 2))

(print '(excercise 14))
(defun factorial (n) (if (= n 1) 1 (* n (factorial (- n 1)))))
(print (factorial 4))

(print '(excercise 15))
(defun triangle (n) (if (= n 1) 1 (+ n (triangle (- n 1)))))
(print (triangle 4))

(print '(excercise 16))
(defun fibonacci (n) (if (<= n 1) 
  n 
  (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))
(print (fibonacci 6))