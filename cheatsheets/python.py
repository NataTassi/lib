"""

Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation (which is mandatory, you have to use consistent indentation to create a block of code). Python is dynamically-typed (type checking at run-time instead of compile-time) and garbage-collected. It supports multiple programming paradigms, including structured, object-oriented and functional programming.


Variables and data types:
-------------------------

Python does not have variables, like other languages where variables have a type and a value; it has names pointing to objects, which know their type.

Basic syntax of variable declaration:  <variable> = <value>
Assign multiple valiables in one line: <var_1>, <var_2>, ..., <var_n> = <val_1>, <val_2>, ..., <val_n>
Swapping: a, b = b, a

Naming rules: 
1. Start with a letter or underscore (_) 
2. Allowed characters: a-z, A-Z, 0-9 and _ (alphanumeric and underscores)
3. Variable names may not be a reserved word in Python

* Variable names are case-sensitive (age, Age and AGE are three different variables)


Built-in data types:

Type        Examples
str         w, x, y, z = '', "string with double quotes", 'string with single quotes', z = 'x' (there's no char, just str)
bool        x, y = True, False
int         x = 17
float       x = 3.1416
complex     x, y, z = 2 + 3j, 5 + 7J, x.real + y.imag*1j (you can put j or J after a number to make it imaginary)
list        x, y = [], ["red", 42, "blue", True, 2.71828, ['white', 'black']] (ordered and changeable, dups allowed)
tuple       x, y = (), ("apple", "banana", "coconut") (ordered and unchangeable collection, dups allowed)
set         x, y = set(), {"apple", "banana", "coconut"} (unordered, unchangeable items, and unindexed, no dups allowed)
frozenset   x = frozenset(('a', 'e', 'i', 'o', 'u')) (immutable version of set; constructor: fronzenset(<iterable>))
dict        x, y = {}, {4: False, 'nice': 24.3, (3, 7): 'tuple key'} (immutable keys, ordered since v3.7 and changeable values, no dups allowed)
range       range(10) (constructor: range([start], stop)); range(start, stop, step); generates a sequence of numbers in the given range; range is a generator function)
bytes       x = b'this is a byte string' (immutable sequence of integers in the range [0, 255]; see stackoverflow.com/a/31322359)
bytearray   x = b'\x02\x03\x05\x07' (immutable version of bytes)
NoneType    It's the type of None, an object used to represent the absence of a value
memoryview  An object that exposes the C level buffer interface as a Python object which can then be passed around like any other object

# Get iterable size with len(iterable).
* You can get the data type of any object by using the type() function.
* Python collections (list, tuple, set and dict) can contain different data types.


Assignment statements in Python do not copy objects, they create bindings between a target and an object. For collections that are mutable or contain mutable items, a copy is sometimes needed so one can change one copy without changing the other, for that purpose you can use copy.copy(x) and copy.deepcopy(x).


Classes and objects:

A class creates a new local namespace where all its attributes are defined. Attributes may be data or functions. There are also special attributes in it that begin with double underscores __. For example, __doc__ gives us the docstring of that class. Of one particular interest is the __init__() function. This special function gets called whenever a new object of that class is instantiated.

Whenever an object calls its method, the object itself is passed as the first argument which is conventionally called self. So 
<object>.<method>([<args>]) translates to <class>.<method>(<object>, [<args>]). This is why adding self as the first argument is mandatory.

Attributes of an object can be created on the fly. Just assign the new attribute a value with <object>.<attr> = <val>.

Objects and attributes can also be deleted (including methods) using the 'del' statement at any time, e.g. del <obj> or del <obj>.<attr>. If no other name is bound to an object is eventually garbage collected (unless there are circular refs).

class ComplexNumber:
    def __init__(self, r=0, i=0):
        self.real = r
        self.imag = i

    def get_data(self):
        print(f'{self.real}+{self.imag}j')

    def scale(self, multiplier: float) -> ComplexNumber: # adding types of params and ret val is valid since v3.0 in any function
        return ComplexNumber(self.real * multiplier, self.imag * multiplier)

num1 = ComplexNumber(2, 3)
num1.get_data()
num1.new_attr = 10
del num1.real

Overloading operators: docs.python.org/3/reference/datamodel.html#emulating-numeric-types (e.g. object.__add__(self, other))


C-like structures in Python:  
    
You could use classes, named tuples (immutable) or Data Classes (available since v3.7) which are mutable and allow default values.

@dataclass
class Point:
    x: float
    y: float
    z: float = 0.0


For more info check out https://docs.python.org/3/reference/datamodel.html



Slicing:
--------

Python supports slice notation for any sequential data type like lists, strings, and ranges. Python uses zero-based indexing, and uses negative indexes to reference elements from the other side of the sequence, so -1 is the last element, -2 the penultimate, and so on. Start and stop are valid indexes (positive or negative) and step an integer number:

- start: the beginning index of the slice, it will include the element at this index unless it is the same as stop, defaults to 0, i.e. the first index. If it's negative, it means to start n items from the end.
- stop: the ending index of the slice, it does not include the element at this index, defaults to length of the sequence being sliced, that is, up to and including the end.
- step: the amount by which the index increases, defaults to 1. If it's negative, you're slicing over the iterable in reverse.

a[start:stop]       items in [start, stop)
a[start:]           items in [start, len(a))
a[:stop]            items in [0, stop)
a[start:stop:step]  start, start + step, ..., start + step * x
a[:]                copy of the sequence
a[::-1]             reversed sequence

"""

# built-in functions: https://www.programiz.com/python-programming/methods/built-in

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

# character to int: ord('a') -> 97
# int to character: chr(97) -> 'a'

import os
def cls():
    """Clear interpreter console.""" 
    os.system('cls' if os.name=='nt' else 'clear')
cls()


def reversed_str(s: str):
    return s[::-1] if s else None


def is_leap_year(year):
    """Determine whether a year is a leap year."""
    return year % 4 == 0 and (year % 100 != 0 or year % 400 == 0)


# Upgrade pip package: pip install <package-name> --upgrade

# https://realpython.com/learning-paths/

# Operators: https://cheatography.com/nouha-thabet/cheat-sheets/python-operators-and-booleans/pdf/

# Install Python packages with pip and requirements.txt: pip install -r requirements.txt


