;Write a function that takes two lists of integers and returns a list containing tuples with corresponding elements from both the lists. 

;For example - f ([1, 2, 3], [4, 5, 6]) -> [(1, 4), (1,5), (1,6), (2, 4), (2, 5), (2, 6), (3, 4), (3 ,5), (3, 6)]. 

;If either list is null, the result is null. The lists do not have to be the same length. Solve this using recursion. You may NOT use the length() ;function or lambda() function or comprehension lists to do your solution.

;Solve it with Haskell and Scheme.

	  
	  
(define (lst-pair lst1 lst2)
        (if (null? lst1) '() 
		(append (lst-pair-helper (car lst1) lst2) (lst-pair (cdr lst1) lst2))))

(define (lst-pair-helper val lst2)
        (if (null? lst2) '()
		(cons (cons val (list(car lst2))) (lst-pair-helper val (cdr lst2)))))  
