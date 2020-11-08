--Write	a	program	to	find	all	pairs	of	numbers	in	a	given	list	which	add	up	to	a	given	sum
--eg.	if	list	=	(1,3,8,12,7,11,9,4,2,10,5)
--and	sum =	12
--pair: (1,11),	(2,10),	(3,9),	(4,8)
--Input:	a	list	of	numbers	and	a	sum
--Output:	The	list	of	pairs	with	the	respective	sum

--[1,3,8,12,7,11,9,4,2,10,5] 12 

nextele lst first summ    
   | lst == [] = []
   | first + (head lst) == summ = ((first,(head lst)),summ):nextele(tail lst) first summ
   | otherwise =  nextele (tail lst) first summ  


pairsum lst summ      
   | lst == [] = []   
   | otherwise  = filter (not . null) (nextele (tail lst) (head lst) summ:pairsum (tail lst) summ)


--2. Extend	your	program	to	include	all	possible	sums
--eg.	Sums	=	5,	6,	7,	8,	…,	23
--Input:	A	list	of	numbers
--Output:	a	list	of	tuples	where	each	tuple	is	the	sum	followed	by	the	list	of	pairs.

--[1,3,8,12,7,11,9,4,2,10,5] 12 

nextele lst first    
   | lst == [] = []
   | otherwise = ((first,(head lst)),first+head(lst)):nextele(tail lst) first  

pairsum lst      
   | lst == [] = []   
   | otherwise  = filter (not . null) (nextele (tail lst) (head lst):pairsum (tail lst))