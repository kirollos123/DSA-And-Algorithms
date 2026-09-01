# Python Functions — Complete Notes

A comprehensive reference for Python Functions, including:

* Functions
* Parameters vs Arguments
* Positional Arguments
* Keyword Arguments
* Default Arguments
* `*args`
* `**kwargs`
* Passing by Object Reference
* Mutable vs Immutable Objects
* Return Values
* First-Class Functions
* Higher-Order Functions
* Lambda Functions
* Closures
* Scope
* `global`
* `nonlocal`
* Recursion
* Nested Functions
* Decorators
* Constructors (`__init__`)
* Methods
* `map()`, `filter()`, `reduce()`
* Common mistakes

---

# 1. What Is a Function?

A function is a reusable block of code designed to perform a specific task.

```python
def greet():
    print("Hello")
```

Calling the function:

```python
greet()
```

Output:

```text
Hello
```

Functions help us:

* Reuse code
* Avoid repetition
* Organize programs
* Make code easier to test
* Make code easier to maintain

---

# 2. Basic Function Syntax

```python
def function_name(parameters):
    # function body
    return value
```

Example:

```python
def add(a, b):
    return a + b
```

Calling:

```python
result = add(10, 20)

print(result)
```

Output:

```text
30
```

---

# 3. Parameter vs Argument

This distinction is extremely important.

## Parameter

A parameter is a variable defined in the function definition.

```python
def add(a, b):
    return a + b
```

Here:

```text
a
b
```

are parameters.

## Argument

An argument is the actual value passed to the function when calling it.

```python
add(10, 20)
```

Here:

```text
10
20
```

are arguments.

### Summary

```python
def add(a, b):      # a and b are parameters
    return a + b

add(10, 20)         # 10 and 20 are arguments
```

---

# 4. Positional Arguments

Arguments can be passed according to position.

```python
def introduce(name, age):
    print(name)
    print(age)

introduce("Kirollos", 25)
```

Python matches them:

```text
name → "Kirollos"
age  → 25
```

The order matters.

```python
introduce(25, "Kirollos")
```

Now:

```text
name → 25
age  → "Kirollos"
```

---

# 5. Keyword Arguments

You can explicitly specify the parameter name.

```python
def introduce(name, age):
    print(name)
    print(age)

introduce(age=25, name="Kirollos")
```

The order does not matter.

```text
name → "Kirollos"
age  → 25
```

---

# 6. Mixing Positional and Keyword Arguments

You can combine positional and keyword arguments.

```python
def person(name, age, city):
    print(name, age, city)

person("Kirollos", age=25, city="Alexandria")
```

However:

❌ You cannot put a positional argument after a keyword argument.

Invalid:

```python
person(name="Kirollos", 25, city="Alexandria")
```

Correct:

```python
person("Kirollos", 25, city="Alexandria")
```

---

# 7. Default Arguments

A parameter can have a default value.

```python
def greet(name="Guest"):
    print(f"Hello {name}")
```

Calling:

```python
greet()
```

Output:

```text
Hello Guest
```

Calling:

```python
greet("Kirollos")
```

Output:

```text
Hello Kirollos
```

The provided argument overrides the default value.

---

# 8. The Default Mutable Argument Problem

Avoid mutable objects as default arguments.

Bad:

```python
def add_item(item, items=[]):
    items.append(item)
    return items
```

The same list can be reused between function calls.

Better:

```python
def add_item(item, items=None):

    if items is None:
        items = []

    items.append(item)

    return items
```

General rule:

Use:

```python
None
```

and create the mutable object inside the function.

---

# 9. `*args`

`*args` allows a function to accept an arbitrary number of positional arguments.

```python
def add(*args):
    return sum(args)
```

Usage:

```python
print(add(1, 2))
print(add(1, 2, 3))
print(add(1, 2, 3, 4, 5))
```

Output:

```text
3
6
15
```

Inside the function:

```python
def add(*args):
    print(args)
```

Calling:

```python
add(1, 2, 3)
```

gives:

```python
(1, 2, 3)
```

`args` is a tuple.

---

# 10. `**kwargs`

`**kwargs` allows a function to accept an arbitrary number of keyword arguments.

```python
def show_info(**kwargs):
    print(kwargs)
```

Calling:

```python
show_info(
    name="Kirollos",
    age=25,
    city="Alexandria"
)
```

Inside the function:

```python
kwargs
```

is a dictionary:

```python
{
    "name": "Kirollos",
    "age": 25,
    "city": "Alexandria"
}
```

---

# 11. Using `*args` and `**kwargs` Together

```python
def test(*args, **kwargs):
    print(args)
    print(kwargs)
```

Calling:

```python
test(1, 2, 3, name="Kirollos", age=25)
```

Output:

```text
(1, 2, 3)

{
    "name": "Kirollos",
    "age": 25
}
```

---

# 12. Parameter Order

A function can have different parameter types.

Example:

```python
def function(
    normal,
    default=10,
    *args,
    keyword_only,
    **kwargs
):
    pass
```

The general order is:

```text
1. Positional / normal parameters
2. Default parameters
3. *args
4. Keyword-only parameters
5. **kwargs
```

---

# 13. Keyword-Only Arguments

You can force arguments to be passed using their names.

```python
def create_user(name, *, age, city):
    print(name, age, city)
```

Valid:

```python
create_user(
    "Kirollos",
    age=25,
    city="Alexandria"
)
```

Invalid:

```python
create_user("Kirollos", 25, "Alexandria")
```

The `*` means:

> Everything after this point must be passed as a keyword argument.

---

# 14. Positional-Only Arguments

Python also supports positional-only parameters using `/`.

```python
def add(a, b, /):
    return a + b
```

Valid:

```python
add(10, 20)
```

Invalid:

```python
add(a=10, b=20)
```

The `/` means:

> Parameters before `/` must be passed positionally.

---

# 15. Full Parameter Example

```python
def example(a, b=10, /, c=20, *args, d, **kwargs):
    pass
```

Conceptually:

```text
a
b
---
c
args
d
kwargs
```

Where:

```text
a, b → positional-only
c     → normal parameter
args  → extra positional arguments
d     → keyword-only
kwargs → extra keyword arguments
```

---

# 16. Return

A function can return a value.

```python
def add(a, b):
    return a + b
```

Then:

```python
result = add(10, 20)

print(result)
```

Output:

```text
30
```

---

# 17. `return` vs `print`

These are different.

### `print()`

Displays something.

```python
def add(a, b):
    print(a + b)
```

### `return`

Sends a value back to the caller.

```python
def add(a, b):
    return a + b
```

This allows:

```python
result = add(10, 20)

result * 2
```

---

# 18. Multiple Return Values

Python can return multiple values.

```python
def calculate(a, b):
    return a + b, a - b, a * b
```

Calling:

```python
result = calculate(10, 5)

print(result)
```

Output:

```text
(15, 5, 50)
```

Technically, Python returns a tuple.

You can unpack it:

```python
addition, subtraction, multiplication = calculate(10, 5)
```

---

# 19. Function Returns `None`

If a function has no `return` statement:

```python
def greet():
    print("Hello")
```

Then:

```python
result = greet()

print(result)
```

Output:

```text
Hello
None
```

Python implicitly returns:

```python
None
```

---

# 20. Functions Are First-Class Objects

This is one of the most important concepts in Python.

Functions are objects.

You can:

* Store them in variables
* Put them inside lists
* Pass them to other functions
* Return them from functions

Example:

```python
def greet():
    print("Hello")
```

You can assign the function to another variable:

```python
x = greet
```

Now:

```python
x()
```

Output:

```text
Hello
```

Important:

```python
x = greet
```

means:

> Store a reference to the function.

While:

```python
x = greet()
```

means:

> Call the function and store its return value.

---

# 21. Passing a Function as an Argument

Example:

```python
def square(x):
    return x * x


def process(value, function):
    return function(value)
```

Now:

```python
print(process(5, square))
```

Output:

```text
25
```

Here:

```text
square
```

is passed as an argument.

---

# 22. Higher-Order Functions

A Higher-Order Function is a function that either:

1. Accepts another function as an argument
2. Returns another function

Example:

```python
def process(value, function):
    return function(value)
```

Calling:

```python
process(5, square)
```

The function receives another function.

---

# 23. Your `process1` Example

```python
def process1(iterable, fun):

    total = 0

    for value in iterable:
        total += fun(value)

    return total
```

Usage:

```python
lst = [2, -4, 6]

print(process1(lst, abs))
```

Execution:

```text
abs(2)  → 2
abs(-4) → 4
abs(6)  → 6

2 + 4 + 6 = 12
```

Result:

```text
12
```

The important idea:

```text
process1
   ↓
receives a function
   ↓
fun
   ↓
calls fun(value)
```

---

# 24. Lambda Functions

A lambda is a small anonymous function.

Syntax:

```python
lambda arguments: expression
```

Example:

```python
lambda x: x * 2
```

Equivalent normal function:

```python
def double(x):
    return x * 2
```

Lambda version:

```python
double = lambda x: x * 2
```

---

# 25. Lambda Example

```python
square = lambda x: x * x

print(square(5))
```

Output:

```text
25
```

---

# 26. Lambda With Higher-Order Functions

```python
def process(value, function):
    return function(value)
```

Now:

```python
result = process(
    5,
    lambda x: x * x
)

print(result)
```

Output:

```text
25
```

---

# 27. Lambda With `process2`

```python
process2 = lambda iterable, fun: sum(
    fun(value)
    for value in iterable
)
```

Then:

```python
lst = [2, -4, 6]

print(process2(lst, abs))
```

Output:

```text
12
```

And:

```python
print(
    process2(
        lst,
        lambda x: x * x
    )
)
```

Output:

```text
56
```

Because:

```text
2²  = 4
-4² = 16
6²  = 36

4 + 16 + 36 = 56
```

---

# 28. Lambda Limitations

A lambda should normally contain a single expression.

Good:

```python
lambda x: x * 2
```

Good:

```python
lambda x, y: x + y
```

Good:

```python
lambda x: x if x > 0 else -x
```

Avoid trying to put complex logic inside lambda functions.

For complicated logic, use `def`.

---

# 29. `map()`

`map()` applies a function to every element.

```python
numbers = [1, 2, 3, 4]

result = map(
    lambda x: x * 2,
    numbers
)

print(list(result))
```

Output:

```text
[2, 4, 6, 8]
```

Conceptually:

```text
1 → 2
2 → 4
3 → 6
4 → 8
```

---

# 30. `filter()`

`filter()` keeps elements for which a condition is true.

```python
numbers = [1, 2, 3, 4, 5, 6]

result = filter(
    lambda x: x % 2 == 0,
    numbers
)

print(list(result))
```

Output:

```text
[2, 4, 6]
```

---

# 31. `reduce()`

`reduce()` repeatedly combines elements into one result.

Import:

```python
from functools import reduce
```

Example:

```python
numbers = [1, 2, 3, 4]

result = reduce(
    lambda x, y: x + y,
    numbers
)

print(result)
```

Output:

```text
10
```

Conceptually:

```text
1 + 2 = 3
3 + 3 = 6
6 + 4 = 10
```

---

# 32. Functions and References

Consider:

```python
def greet():
    print("Hello")
```

Then:

```python
x = greet
```

There are two references to the same function object:

```text
x ─────┐
       ↓
    greet function
       ↑
greet ─┘
```

Calling either:

```python
greet()
```

or:

```python
x()
```

executes the same function object.

---

# 33. Python Does Not Use Traditional "Pass by Value" or "Pass by Reference"

Python is best described as using:

> **Pass-by-object-reference**

or:

> **Call-by-sharing**

When you pass an object to a function, Python passes the reference to that object.

Example:

```python
def change(x):
    x = 100

a = 10

change(a)

print(a)
```

Output:

```text
10
```

Why?

Inside the function:

```python
x = 100
```

only changes what `x` refers to.

It does not change the original integer object.

---

# 34. Mutable vs Immutable Objects

This concept is critical for understanding function arguments.

## Immutable Objects

Examples:

```text
int
float
str
tuple
bool
frozenset
```

They cannot be changed in-place.

Example:

```python
def change(x):
    x += 10

a = 5

change(a)

print(a)
```

Output:

```text
5
```

---

# 35. Mutable Objects

Examples:

```text
list
dict
set
```

They can be modified in-place.

Example:

```python
def change(items):
    items.append(100)

numbers = [1, 2, 3]

change(numbers)

print(numbers)
```

Output:

```text
[1, 2, 3, 100]
```

The function modified the same list object.

---

# 36. Important Difference

### Reassignment

```python
def change(x):
    x = [100, 200]
```

This changes the local reference.

### Mutation

```python
def change(x):
    x.append(100)
```

This modifies the existing object.

This distinction explains most confusion around "pass by reference" in Python.

---

# 37. Example: Mutable Argument

```python
def add_item(items):
    items.append("Python")

languages = ["C", "C++"]

add_item(languages)

print(languages)
```

Output:

```text
["C", "C++", "Python"]
```

The same list was modified.

---

# 38. Example: Reassigning a Mutable Argument

```python
def change(items):
    items = ["Java", "Python"]

languages = ["C", "C++"]

change(languages)

print(languages)
```

Output:

```text
["C", "C++"]
```

The original list was not replaced.

The local variable `items` was simply made to reference another list.

---

# 39. Scope

Scope determines where a variable can be accessed.

Python commonly has:

```text
L → Local
E → Enclosing
G → Global
B → Built-in
```

This is called the:

> **LEGB Rule**

---

# 40. Local Scope

A variable created inside a function is local.

```python
def test():
    x = 10
    print(x)
```

You cannot normally access `x` outside:

```python
test()

print(x)
```

This raises:

```text
NameError
```

---

# 41. Global Scope

A variable defined outside functions is global.

```python
x = 10

def test():
    print(x)

test()
```

The function can read the global variable.

---

# 42. `global`

If you want to modify a global variable inside a function:

```python
x = 10

def change():
    global x
    x = 100

change()

print(x)
```

Output:

```text
100
```

Use `global` carefully.

In most production code, it is better to avoid unnecessary global state.

---

# 43. Enclosing Scope

Nested functions create an enclosing scope.

```python
def outer():

    x = 10

    def inner():
        print(x)

    inner()

outer()
```

`inner()` can access `x` from `outer()`.

---

# 44. `nonlocal`

`nonlocal` allows a nested function to modify a variable from its enclosing function.

```python
def outer():

    x = 10

    def inner():
        nonlocal x
        x += 1

    inner()

    print(x)

outer()
```

Output:

```text
11
```

Without `nonlocal`, Python would treat an assignment to `x` inside `inner()` as creating a local variable.

---

# 45. Nested Functions

A function can be defined inside another function.

```python
def outer():

    def inner():
        print("Hello")

    inner()

outer()
```

Nested functions are useful for:

* Encapsulation
* Closures
* Decorators
* Helper functions

---

# 46. Closures

A closure happens when an inner function remembers variables from its enclosing scope even after the outer function has finished.

Example:

```python
def outer(x):

    def inner():
        return x

    return inner
```

Now:

```python
function = outer(10)

print(function())
```

Output:

```text
10
```

The interesting part:

```python
outer(10)
```

has already finished.

But `inner()` still remembers:

```text
x = 10
```

That is a closure.

---

# 47. Closure Example

```python
def multiplier(n):

    def multiply(x):
        return x * n

    return multiply
```

Create functions:

```python
double = multiplier(2)
triple = multiplier(3)
```

Now:

```python
print(double(10))
print(triple(10))
```

Output:

```text
20
30
```

Each function remembers its own `n`.

---

# 48. The Late Binding Problem

Consider:

```python
def create_functions():

    functions = []

    for i in range(3):

        def f():
            return i

        functions.append(f)

    return functions
```

Now:

```python
lst = create_functions()

for f in lst:
    print(f())
```

Output:

```text
2
2
2
```

Many beginners expect:

```text
0
1
2
```

But Python closures capture the variable, not its value at each iteration.

When the functions are called, `i` has become:

```text
2
```

---

# 49. Fixing Late Binding

Use a default argument:

```python
def create_functions():

    functions = []

    for i in range(3):

        def f(i=i):
            return i

        functions.append(f)

    return functions
```

Now:

```python
lst = create_functions()

for f in lst:
    print(f())
```

Output:

```text
0
1
2
```

---

# 50. Recursion

Recursion means a function calls itself.

Example:

```python
def countdown(n):

    if n == 0:
        return

    print(n)

    countdown(n - 1)
```

Calling:

```python
countdown(5)
```

Output:

```text
5
4
3
2
1
```

A recursive function normally needs:

1. Base case
2. Recursive case

---

# 51. Recursive Factorial

```python
def factorial(n):

    if n == 0:
        return 1

    return n * factorial(n - 1)
```

Example:

```python
factorial(5)
```

Execution:

```text
5 × factorial(4)
5 × 4 × factorial(3)
5 × 4 × 3 × factorial(2)
5 × 4 × 3 × 2 × factorial(1)
5 × 4 × 3 × 2 × 1
```

Result:

```text
120
```

---

# 52. Functions as Return Values

A function can return another function.

```python
def outer():

    def inner():
        return "Hello"

    return inner
```

Now:

```python
x = outer()

print(x())
```

Output:

```text
Hello
```

Notice:

```python
return inner
```

not:

```python
return inner()
```

The first returns the function itself.

The second executes it and returns its result.

---

# 53. Decorators

A decorator is a function that modifies or extends the behavior of another function.

Basic example:

```python
def decorator(function):

    def wrapper():
        print("Before")

        function()

        print("After")

    return wrapper
```

Use it:

```python
@decorator
def greet():
    print("Hello")
```

Calling:

```python
greet()
```

Output:

```text
Before
Hello
After
```

---

# 54. What Does `@decorator` Mean?

This:

```python
@decorator
def greet():
    print("Hello")
```

is essentially:

```python
def greet():
    print("Hello")

greet = decorator(greet)
```

So decorators rely heavily on:

* Functions as objects
* Passing functions
* Returning functions
* Closures

---

# 55. Decorators With Arguments

Use `*args` and `**kwargs` to support arbitrary function arguments.

```python
def decorator(function):

    def wrapper(*args, **kwargs):

        print("Before")

        result = function(*args, **kwargs)

        print("After")

        return result

    return wrapper
```

Example:

```python
@decorator
def add(a, b):
    return a + b
```

Calling:

```python
result = add(10, 20)

print(result)
```

Output:

```text
Before
After
30
```

---

# 56. `functools.wraps`

When creating decorators, use:

```python
from functools import wraps
```

Example:

```python
def decorator(function):

    @wraps(function)
    def wrapper(*args, **kwargs):
        return function(*args, **kwargs)

    return wrapper
```

This preserves metadata such as:

```python
__name__
__doc__
```

---

# 57. Methods vs Functions

A function:

```python
def add(a, b):
    return a + b
```

A method is a function defined inside a class.

```python
class Calculator:

    def add(self, a, b):
        return a + b
```

Now:

```python
calculator = Calculator()

calculator.add(10, 20)
```

`add()` is a method.

---

# 58. `self`

Inside an instance method:

```python
class Person:

    def greet(self):
        print("Hello")
```

`self` refers to the current object.

Example:

```python
person = Person()

person.greet()
```

Conceptually, Python performs something similar to:

```python
Person.greet(person)
```

Therefore:

```python
self
```

is a reference to the instance.

---

# 59. Constructor: `__init__`

In Python, `__init__` is an initializer method.

Example:

```python
class Person:

    def __init__(self, name, age):
        self.name = name
        self.age = age
```

Creating an object:

```python
person = Person("Kirollos", 25)
```

The initialization process assigns:

```text
self.name → "Kirollos"
self.age  → 25
```

---

# 60. Important: `__init__` Is Not the Constructor Technically

In Python terminology:

```text
__new__ → creates the instance
__init__ → initializes the instance
```

Example:

```python
class Person:

    def __new__(cls, name):
        print("Creating object")
        return super().__new__(cls)

    def __init__(self, name):
        print("Initializing object")
        self.name = name
```

Normally, you will use:

```python
__init__
```

and rarely need to override `__new__`.

---

# 61. Instance Method

```python
class Person:

    def greet(self):
        print("Hello")
```

It operates on an instance.

```python
person = Person()

person.greet()
```

---

# 62. Class Method

A class method uses:

```python
@classmethod
```

and receives `cls`.

```python
class Person:

    count = 0

    @classmethod
    def show_count(cls):
        print(cls.count)
```

Calling:

```python
Person.show_count()
```

---

# 63. Static Method

A static method does not automatically receive `self` or `cls`.

```python
class Calculator:

    @staticmethod
    def add(a, b):
        return a + b
```

Calling:

```python
Calculator.add(10, 20)
```

---

# 64. Three Common Method Types

```text
Instance Method
    ↓
self

Class Method
    ↓
cls

Static Method
    ↓
no automatic self/cls
```

Example:

```python
class Example:

    def instance_method(self):
        pass

    @classmethod
    def class_method(cls):
        pass

    @staticmethod
    def static_method():
        pass
```

---

# 65. Function Annotations

Python allows type annotations.

```python
def add(a: int, b: int) -> int:
    return a + b
```

This communicates:

```text
a → expected int
b → expected int
return → expected int
```

Important:

> Type annotations are not enforced automatically by Python.

---

# 66. Optional Parameters

You can use:

```python
def greet(name: str | None = None):
    if name is None:
        print("Hello Guest")
    else:
        print(f"Hello {name}")
```

---

# 67. Docstrings

A function can document itself.

```python
def add(a, b):
    """
    Return the sum of two numbers.
    """
    return a + b
```

You can access the docstring:

```python
print(add.__doc__)
```

---

# 68. Function Introspection

Functions are objects, so they have attributes.

Example:

```python
def greet():
    """Say hello."""
    print("Hello")
```

You can inspect:

```python
print(greet.__name__)
print(greet.__doc__)
```

Output:

```text
greet
Say hello.
```

---

# 69. `callable()`

You can check whether an object can be called.

```python
def greet():
    pass

print(callable(greet))
```

Output:

```text
True
```

For example:

```python
x = 10

print(callable(x))
```

Output:

```text
False
```

---

# 70. `lambda` vs `def`

### `def`

```python
def square(x):
    return x * x
```

### `lambda`

```python
square = lambda x: x * x
```

Use `def` when:

* Logic is complex
* The function needs documentation
* The function will be reused
* Readability matters

Use `lambda` when:

* The operation is very small
* You need a short function temporarily
* Working with `map()`, `filter()`, sorting, etc.

---

# 71. Lambda With `sorted()`

Example:

```python
students = [
    ("Ali", 80),
    ("Ahmed", 95),
    ("Omar", 70)
]
```

Sort by score:

```python
students.sort(
    key=lambda student: student[1]
)
```

Result:

```text
[
    ("Omar", 70),
    ("Ali", 80),
    ("Ahmed", 95)
]
```

---

# 72. `map`, `filter`, `reduce` Together

Example:

```python
from functools import reduce

numbers = [1, 2, 3, 4, 5, 6]

result = reduce(
    lambda x, y: x + y,
    filter(
        lambda x: x % 2 == 0,
        map(
            lambda x: x * 2,
            numbers
        )
    )
)

print(result)
```

This is valid, but can become difficult to read.

Prefer readable code over excessive functional programming.

---

# 73. Generator Expressions

Instead of:

```python
sum([x * 2 for x in numbers])
```

you can use:

```python
sum(x * 2 for x in numbers)
```

The second creates a generator expression.

This is often more memory-efficient because it does not create the entire list first.

---

# 74. Function Composition

You can use the result of one function as the input to another.

```python
def double(x):
    return x * 2

def square(x):
    return x * x
```

Conceptually:

```python
square(double(5))
```

Execution:

```text
5
↓
double
↓
10
↓
square
↓
100
```

---

# 75. Pure Functions

A pure function:

1. Produces the same output for the same input.
2. Does not modify external state.

Example:

```python
def add(a, b):
    return a + b
```

This is pure.

But:

```python
total = 0

def add(x):
    global total
    total += x
```

has side effects.

---

# 76. Side Effects

A side effect occurs when a function changes something outside its local scope.

Examples:

```python
print()
```

Writing to a file:

```python
file.write(...)
```

Changing a global variable:

```python
global x
```

Mutating a passed list:

```python
items.append(...)
```

Side effects are not always bad, but they should be controlled.

---

# 77. Function Factory

A function that creates and returns functions.

Example:

```python
def power_factory(power):

    def power_function(x):
        return x ** power

    return power_function
```

Usage:

```python
square = power_factory(2)
cube = power_factory(3)
```

Then:

```python
print(square(5))
print(cube(5))
```

Output:

```text
25
125
```

This combines:

```text
Higher-order functions
+
Nested functions
+
Closures
```

---

# 78. Important Mental Model

When you see:

```python
function
```

think:

> Reference to a function object.

When you see:

```python
function()
```

think:

> Call the function.

Example:

```python
x = greet
```

means:

```text
x → reference to greet
```

While:

```python
x = greet()
```

means:

```text
execute greet
↓
store returned value in x
```

This distinction is fundamental.

---

# 79. Function Argument Mental Model

When doing:

```python
def process(x):
    ...
```

and:

```python
process(value)
```

think:

```text
value
  ↓
object
  ↑
x
```

Python gives the function a reference to the same object.

Then ask:

> Is the object mutable or immutable?

This determines whether an in-place mutation can affect the caller's object.

---

# 80. Common Mistake: Calling Instead of Passing

Wrong:

```python
process(lst, abs())
```

Correct:

```python
process(lst, abs)
```

Why?

Because:

```python
abs
```

means:

> The function object.

While:

```python
abs()
```

means:

> Call `abs` now.

For a function requiring an argument:

```python
abs(-10)
```

returns:

```text
10
```

---

# 81. Common Mistake With Lambda

Wrong:

```python
lambda x: print(x)
```

This is technically valid, but usually not useful when you expect a value.

Remember:

```python
lambda x: x * 2
```

returns the expression result.

---

# 82. Common Mistake: Shadowing Built-ins

Avoid:

```python
sum = 0
```

because `sum` is a built-in Python function.

Later:

```python
sum([1, 2, 3])
```

may fail because you replaced the built-in name.

Prefer:

```python
total = 0
```

instead.

Similarly, avoid variables named:

```text
list
str
int
dict
set
sum
max
min
input
id
```

---

# 83. Your `process1` Should Prefer `total`

Instead of:

```python
def process1(iterable, fun):

    sum = 0

    for value in iterable:
        sum += fun(value)

    return sum
```

Prefer:

```python
def process1(iterable, fun):

    total = 0

    for value in iterable:
        total += fun(value)

    return total
```

This avoids shadowing Python's built-in:

```python
sum()
```

---

# 84. Your `process2`

A clean version:

```python
process2 = lambda iterable, fun: sum(
    fun(value)
    for value in iterable
)
```

Example:

```python
lst = [2, -4, 6]

print(process2(lst, abs))
```

Output:

```text
12
```

And:

```python
print(
    process2(
        lst,
        lambda x: x * x
    )
)
```

Output:

```text
56
```

---

# 85. `process1` vs `process2`

### `process1`

```python
def process1(iterable, fun):

    total = 0

    for value in iterable:
        total += fun(value)

    return total
```

### `process2`

```python
process2 = lambda iterable, fun: sum(
    fun(value)
    for value in iterable
)
```

Both implement the same idea:

```text
iterable
   ↓
take each value
   ↓
apply function
   ↓
collect results
   ↓
sum results
```

The second version is more concise.

---

# 86. Functions and OOP

Functions become methods when defined inside classes.

```python
def add(a, b):
    return a + b
```

Standalone function.

While:

```python
class Calculator:

    def add(self, a, b):
        return a + b
```

`add()` is now a method.

---

# 87. Function vs Method

```text
Function
    ↓
Standalone behavior

Method
    ↓
Behavior associated with an object/class
```

Example:

```python
len(numbers)
```

`len()` is a function.

```python
numbers.append(10)
```

`append()` is a method.

---

# 88. The Big Picture

Python functions can be understood in layers.

## Level 1 — Basics

```python
def function():
    pass
```

Learn:

* Definition
* Calling
* Parameters
* Arguments
* Return

---

## Level 2 — Arguments

Learn:

```text
Positional
Keyword
Default
*args
**kwargs
Keyword-only
Positional-only
```

---

## Level 3 — Objects and References

Understand:

```text
Everything is an object
Functions are objects
Variables hold references
Python uses object-reference semantics
Mutable vs immutable
```

---

## Level 4 — Functional Programming

Learn:

```text
First-class functions
Higher-order functions
Lambda
map
filter
reduce
Function composition
```

---

## Level 5 — Scope

Understand:

```text
Local
Enclosing
Global
Built-in
LEGB
global
nonlocal
```

---

## Level 6 — Advanced Functions

Learn:

```text
Nested functions
Closures
Decorators
Generators
Function factories
```

---

## Level 7 — OOP

Connect functions to:

```text
Methods
self
classmethod
staticmethod
__init__
__new__
```

---

# 89. Core Concepts to Memorize

### Function

```python
def add(a, b):
    return a + b
```

### Parameter

```python
a
b
```

### Argument

```python
add(10, 20)
```

### Positional

```python
add(10, 20)
```

### Keyword

```python
add(a=10, b=20)
```

### Default

```python
def add(a, b=10):
```

### `*args`

```python
def test(*args):
```

### `**kwargs`

```python
def test(**kwargs):
```

### Lambda

```python
lambda x: x * 2
```

### Higher-order function

```python
def process(function):
    return function()
```

### Closure

```python
def outer(x):

    def inner():
        return x

    return inner
```

### Decorator

```python
@decorator
def function():
    pass
```

### Method

```python
class A:

    def test(self):
        pass
```

### Constructor / initializer

```python
def __init__(self):
    pass
```

---

# 90. Final Mental Model

The most important things to understand are:

```text
FUNCTION
   │
   ├── accepts arguments
   │
   ├── parameters receive references to objects
   │
   ├── performs operations
   │
   ├── may mutate mutable objects
   │
   ├── may return a value
   │
   ├── can be stored in variables
   │
   ├── can be passed to other functions
   │
   └── can return other functions
```

From this foundation:

```text
Functions
   ↓
First-Class Functions
   ↓
Higher-Order Functions
   ↓
Lambda
   ↓
Closures
   ↓
Decorators
   ↓
Functional Programming
```

And:

```text
Functions
   ↓
Classes
   ↓
Methods
   ↓
self / cls
   ↓
__init__
   ↓
OOP
```

---

# 91. Most Important Rules

Remember these rules:

1. **Parameter** = variable in the function definition.
2. **Argument** = actual value passed to the function.
3. `function` = reference to the function.
4. `function()` = call the function.
5. Python functions are **first-class objects**.
6. Python uses **pass-by-object-reference / call-by-sharing semantics**.
7. Mutable objects can be modified in-place.
8. Reassigning a parameter does not reassign the caller's variable.
9. `*args` collects positional arguments into a tuple.
10. `**kwargs` collects keyword arguments into a dictionary.
11. `lambda` creates a small anonymous function.
12. A Higher-Order Function accepts or returns another function.
13. `nonlocal` modifies a variable in an enclosing scope.
14. `global` modifies a global variable.
15. Closures remember variables from their enclosing scope.
16. `@decorator` is essentially function transformation.
17. `__init__` initializes an object; `__new__` creates it.
18. Avoid shadowing built-in names such as `sum`, `list`, and `id`.
19. Prefer readable `def` functions when lambda expressions become complex.
20. Understand **references + mutability + scope** before moving deeply into decorators and advanced Python.

---

# 92. Recommended Learning Order

If you are studying Python deeply, learn functions in this order:

```text
1. def
   ↓
2. Parameters / Arguments
   ↓
3. Positional / Keyword
   ↓
4. Default Arguments
   ↓
5. return
   ↓
6. *args / **kwargs
   ↓
7. Mutable vs Immutable
   ↓
8. Object References
   ↓
9. Scope / LEGB
   ↓
10. global / nonlocal
   ↓
11. Nested Functions
   ↓
12. First-Class Functions
   ↓
13. Higher-Order Functions
   ↓
14. Lambda
   ↓
15. map / filter / reduce
   ↓
16. Closures
   ↓
17. Decorators
   ↓
18. Methods / self
   ↓
19. classmethod / staticmethod
   ↓
20. __new__ / __init__
```

If you understand this sequence properly, you will have a strong foundation for **Python OOP, decorators, functional programming, generators, frameworks such as FastAPI/Django, and more advanced Python internals**.
