reverselist lst lst1 ;first list is the list of integers, second list is an empty list
   | lst == [] = lst1 
   |otherwise  = reverselist (tail lst)  ((head lst):lst1)