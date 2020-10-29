
;1.Write a program that finds the maximum of a simple list of numbers.
max a b
   | a <= b = b
   | otherwise = a
  
maximum lst    
   | (tail lst) == [] = (head lst) 
   |otherwise  = (max (head lst)(maximum (tail lst)))

; Write a program that succeeds if the intersection of two given list parameters is empty.

;Iteration:1
intersec lst1 lst2
   | lst1 == [] = "Intersect not found"
   | elem (head lst1) lst2 = "Intersect Found"
   | otherwise =  intersec (tail lst1) lst2

;Iteration:2
filterNot f = filter (not . f)

intersect lst1 lst2 
   | lst1 == [] = []
   | lst2 == [] = []
   | elem (head lst1) lst2 = (head lst1):intersect (tail lst1) (filterNot (==(head lst1)) lst2)
   | otherwise =  intersect (tail lst1) lst2    

;3. Write a program that returns a list containing the union of the elements of two given lists. Assume the list represents sets (i.e. unique ;elements) and the union returns unique elements.

union lst1 lst2   
   | lst1 == [] = lst2
   | lst2 == [] = lst1
   | elem (head lst1) lst2 = union (tail lst1) lst2
   | otherwise = (head lst1):union(tail lst1) lst2   
   
;4. Write a program that returns the final element of a list

finalelement lst    
   | (tail lst) == [] = (head lst) 
   | otherwise  = (finalelement (tail lst))