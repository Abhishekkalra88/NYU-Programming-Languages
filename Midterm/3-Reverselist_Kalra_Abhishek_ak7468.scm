(define (list-reverse lst lst1) ;first list is the list of integers, second list is an empty list used to generate output as part of tail recurssion
    (if (null? lst) lst1
    (list-reverse (cdr lst) (cons (car lst) lst1)))) 