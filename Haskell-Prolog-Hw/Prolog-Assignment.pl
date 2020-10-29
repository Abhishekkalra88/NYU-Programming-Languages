
1. Write a program that finds the maximum of a simple list of numbers.

listmax([X], X). %if list consists of only one element than that element is the maximum

listmax([X | Y], N) :- % if there are more than element in list than check for every element in list
  listmax(Y, Max),
  ( X > Max -> N = X ; N = Max ).

2. Write a program that succeeds if the intersection of two given list parameters is empty.
% Element X is in list?


% Element Y is in list?

present(Y, [ Y | _ ]).  

present(Y, [ _ | L ]):- present(Y, L).

% intersection of two list

inter([ ], _, [ ]).

inter([ X | A ], B, [ X | C ]):- present(X, B), inter(A, B, C).

inter([ _ | A ], B, C):- inter(A, B, C).


3. Write a program that returns a list containing the union of the elements of two given lists. Assume the list represents sets (i.e. unique elements) and the union returns unique elements.

% Element Y is in list?

present(Y, [ Y | _ ]).  

present(Y, [ _ | L ]):- present(Y, L).


% Union of two list

union([ ], B, B). % union of an empty list and another list is the second list

union([ X | A ], B, [ X | C ]):- \+present(X, B), union(A, B, C).

union([ _ | A ], B, C):- union(A, B, C).

4. Write a program that returns the final element of a list

% Last element of list

% A list ends with an element if contains exactly that element.
final(X,[X]).

% A list ends with an element if tail ends with element.
final(X,[_|T]) :- final(X,T).