from math import sqrt
def wears_jacket_with_if(temp, raining):
    """
 >>> wears_jacket_with_if(90, False)
 False
 >>> wears_jacket_with_if(40, False)
 True
 >>> wears_jacket_with_if(100, True)
 True
 """ 
    if raining:
        return True
    elif temp<60:
        return True
    else:
        return False 
def wears_jacket(temp, raining):
    """
 >>> wears_jacket_with_if(90, False)
 False
 >>> wears_jacket_with_if(40, False)
 True
 >>> wears_jacket_with_if(100, True)
 True
 """ 
    return  raining or temp<60 
def is_prime(n):
    """"
    >>> is_prime(10)
    False
    >>> is_prime(7)
    True
    >>> is_prime(11)
    True
    >>> is_prime(29)
    True
    >>> is_prime(52)
    False
    """
    factor=2
    while factor<(sqrt(n))and n%factor!=0:
        factor+=1
    if factor>sqrt(n):
        return True
    else:
        return False