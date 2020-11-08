#=Write	a	program	to	find	all	pairs	of	numbers	in	a	given	list	which	add	up	to	a	given	sum
eg.	if	list	=	(1,3,8,12,7,11,9,4,2,10,5)
and	sum =	12
pair: (1,11),	(2,10),	(3,9),	(4,8)
Input:	a	list	of	numbers	and	a	sum
Output:	The	list	of	pairs	with	the	respective	sum =#

lst	=	[1,3,8,12,7,11,9,4,2,10,5]

function nextele(lst,top,summ)
           if lst == []
                []
           elseif top + first(lst) == summ 
                append!([(top,first(lst),summ)],nextele(lst[2:size(lst)[1]],top,summ))
		   else
		        nextele(lst[2:size(lst)[1]],top,summ) 
		   end
       end

function pairsum(lst,summ)      
           if lst == []
		         []
           else
		       filter(!isempty,append!([nextele(lst[2:size(lst)[1]],first(lst),summ)], pairsum(lst[2:size(lst)[1]],summ)))
		   end
	   end



#= 2. Extend	your	program	to	include	all	possible	sums
eg.	Sums	=	5,	6,	7,	8,	…,	23
Input:	A	list	of	numbers
Output:	a	list	of	tuples	where	each	tuple	is	the	sum	followed	by	the	list	of	pairs. =#

   
function nextele(lst,top)
           if lst == []
                []
           else
                append!([(top,first(lst),top+first(lst))],nextele(lst[2:size(lst)[1]],top)) 
		   end
       end

function pairsum(lst)      
           if lst == []
		         []
           else
		       filter(!isempty,append!([nextele(lst[2:size(lst)[1]],first(lst))], pairsum(lst[2:size(lst)[1]])))
		   end
	   end