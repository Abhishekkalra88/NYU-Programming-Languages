# -*- coding: utf-8 -*-
"""
Created on Sat Oct 17 19:12:39 2020

@author: abhis
"""
"""
Write programs in Haskell, Python, and Scheme that reverses a simple list of
integers using recursion; specifically, in tail recursive form. Do not use higher order
functions such as “reverse”, comprehensive lists or functions from a library.
"""


def reverselist (lst, lst1): # first list is the list of integers, second list is an empty list
    if not lst:
        return lst1
    elif lst:
        return (reverselist (lst[1:], ([lst[0]] + lst1) )) 
        
        