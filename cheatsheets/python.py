# I/O:

from sys import stdin

if __name__ == '__main__':
    # map(function, iterable): map after applying function to each item in iterable
    x, y = map(float, next(stdin).split())
    q = round(x / y, 2)
    print(f"{x} / {y} = {q}") # formatting

for line in stdin:
    print(line)

def answer(x):
    print(f"! {x}", flush=True)


price = float(input()) # input() reads data from stdin as string


#Operators:

mid = (lo + hi) // 2 # floor divion
x ** y # x^y
# The other arithmetic operators are the same as in C++
# Assignment, comparison and bitwise operators look the same as in C++
# Logical operators: and, or, not
# Membership operators: x in y (True if x is present in y), x not in y (alike)

#Datatypes: str, bool, int, float, complex, list, tuple, range, dict, map, set, frozenset
# There's no char, just str
# character to int: ord('a') -> 97
# int to character: chr(97) -> 'a'

# len(iterable): size

# Clear interpreter console:
import os
def cls():
    os.system('cls' if os.name=='nt' else 'clear')
cls()


def reversed_str(s: str):
    return s[::-1] if s else None
