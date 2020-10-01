;Write a Scheme function that returns the number of zeros in a given simple list of numbers.
(define zero-count (lambda (lst) 
                    (cond ((null? lst) 0)
                    ((= 0 (car lst)) (+ 1 (zero-count (cdr lst))))
                    (else (+ 0 (zero-count (cdr lst))))))

;Write a Scheme function that takes a list as a parameter and returns a list identical to the parameter except the last element has been deleted.

(define new-list (lambda (lst) 
                    (cond ((null? lst) '())
                    ((= 1 (length lst)) '())
                    (else (cons (car lst) (new-list (cdr lst)) )))))

;Write a Scheme function that returns the union of two simple list parameters that represent sets. As sets the input list do not have duplicate 
;elements and the union does not have duplicate elements.
(define union (lambda (lst2 lst1)
              (cond ((null? lst1) lst2)
			        ((member(car lst1) lst2) (union lst2 (cdr lst1)))
					    (else (union (cons (car lst1) lst2) (cdr lst1) )))))
						


;Write a Scheme function that takes a simple list of numbers as its parameter and returns the largest and smallest numbers in the list.

(define min (lambda (a b) (if (< a b) a b)))
(define max (lambda (a b) (if (> a b) a b)))

(define minimum (lambda (a)
 (cond ((null? (cdr a)) (car a)) 
  (else (min (car a) (minimum (cdr a))) ))))

(define maximum (lambda (a)
 (cond ((null? (cdr a)) (car a)) 
  (else (max (car a) (maximum (cdr a)))))))
  

;Rewrite the following Scheme function as a tail-recursive function:
;Function Sums up itself
;Tail-Recursion Reference https://stackoverflow.com/questions/33923/what-is-tail-recursion
;Tail-Recursion Reference https://www.cs.utexas.edu/ftp/garbage/cs345/schintro-v14/schintro_127.html#:~:text=We%20can%20write%20a%20tail,non%2Dtail%20call%20returns%20it.

(DEFINE (doit n total)
   (IF (= n 0)
     0
    (+ total (doit (− n 1)))
))
; funtion using tail recursion

(define (doit n total)
   (if (= n 0)
     total
    (doit (- n 1) (+ total n))))