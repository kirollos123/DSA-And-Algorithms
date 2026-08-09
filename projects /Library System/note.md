## `str.isdecimal()`

**Definition:**  
Checks whether all characters in a string are decimal digits.

**Returns:**  
- `True` → if all characters are decimal digits.
- `False` → otherwise.

**Why I use it:**  
I use it to validate user input before converting it to an integer.

**Example:**

```python
inp = input("Enter a number: ")

if not inp.isdecimal():
    print("Invalid input")
    "123".isdecimal()      # True
"0".isdecimal()        # True
"12.5".isdecimal()     # False
"-10".isdecimal()      # False
"abc".isdecimal()      # False
"12a".isdecimal()      # False
#############################
# Loops

## `for` Loop

**When to use:**
Use a `for` loop when you want to iterate over a collection or repeat an operation a known number of times.

**Why I use it:**
I use it when I need to process each item in a sequence such as a list, tuple, string, or dictionary, or when I know the number of iterations.

**Example:**

```python
names = ["Ahmed", "Ali", "John"]

for name in names:
    print(name)
```

## `while` Loop

**When to use:**
Use a `while` loop when you want to repeat an operation as long as a condition is `True`.

**Why I use it:**
I use it when I don't know how many iterations are needed and I want the loop to continue until a specific condition is met.

**Example:**

```python
password = ""

while password != "1234":
    password = input("Enter password")
```

**Example from my project:**

```python
while True:
    inp = input(msg)

    if not inp.isdecimal():
        continue
```

**Think:**
`for` → "For each item, do this."
`while` → "Keep doing this while the condition is true."
##################
# OOP Concepts

## 1. Class

**Definition:**
A class is a blueprint for creating objects.

**Example:**

```python
class Book:
    pass
```

**Think:**
Class = Blueprint.

## 2. Object

**Definition:**
An object is an instance of a class.

**Example:**

```python
book = Book()
```

**Think:**
Object = An actual thing created from the class.

## 3. Attributes

**Definition:**
Attributes are variables that store data belonging to an object.

**Example:**

```python
class Book:
    def __init__(self, name, id):
        self.name = name
        self.id = id
```

Here:

```python
self.name
self.id
```

are attributes.

**Think:**
Attributes = What the object has.

## 4. `__init__()`

**Definition:**
`__init__()` is a special method that initializes an object's attributes when the object is created.

**Example:**

```python
class Book:
    def __init__(self, name, id):
        self.name = name
        self.id = id
```

When creating an object:

```python
book = Book("Python", 1)
```

Python automatically calls `__init__()`.

**Think:**
`__init__()` = Initialize the object.

## 5. `self`

**Definition:**
`self` refers to the current object.

**Example:**

```python
class Book:
    def __init__(self, name):
        self.name = name
```

`self.name` means the `name` attribute belonging to the current object.

**Think:**
`self` = The current object.

## 6. Methods

**Definition:**
Methods are functions defined inside a class that describe what an object can do.

**Example:**

```python
class Book:
    def borrow(self):
        print("Book borrowed")
```

Usage:

```python
book.borrow()
```

**Think:**
Methods = What the object can do.

# The Four Main OOP Concepts

## 7. Encapsulation

**Definition:**
Encapsulation means keeping data and the methods that operate on that data together inside a class.

**Example:**

```python
class Book:
    def __init__(self, name):
        self.name = name
        self.total_borrowed = 0

    def borrow(self):
        self.total_borrowed += 1
```

**Think:**
Encapsulation = Keep related data and behavior together.

## 8. Abstraction

**Definition:**
Abstraction means hiding implementation details and exposing only what the user needs.

**Example:**

```python
book.borrow()
```

The user does not need to know how `borrow()` updates the internal data.

**Think:**
Abstraction = Hide the details, show the functionality.

## 9. Inheritance

**Definition:**
Inheritance allows a class to reuse and extend attributes and methods from another class.

**Example:**

```python
class EBook(Book):
    pass
```

`EBook` inherits from `Book`.

**Think:**
Inheritance = Reuse and extend.

## 10. Polymorphism

**Definition:**
Polymorphism allows different classes to use the same method name with different behavior.

**Example:**

```python
class Book:
    def display(self):
        print("Normal book")


class EBook(Book):
    def display(self):
        print("Electronic book")
```

Both classes have:

```python
display()
```

but they behave differently.

**Think:**
Polymorphism = Same interface, different behavior.

# OOP Learning Order

```text
Class
  ↓
Object
  ↓
Attributes
  ↓
__init__()
  ↓
self
  ↓
Methods
  ↓
Encapsulation
  ↓
Abstraction
  ↓
Inheritance
  ↓
Polymorphism
```

# Quick Summary

| Concept       | Meaning                            |
| ------------- | ---------------------------------- |
| Class         | Blueprint                          |
| Object        | Instance of a class                |
| Attribute     | Data belonging to an object        |
| `__init__()`  | Initializes the object             |
| `self`        | Current object                     |
| Method        | What the object can do             |
| Encapsulation | Keep data and behavior together    |
| Abstraction   | Hide implementation details        |
| Inheritance   | Reuse and extend another class     |
| Polymorphism  | Same interface, different behavior |
##########
## `assert`

**Definition:**
`assert` is used to check whether a condition is `True`.

If the condition is `True`, the program continues normally.
If the condition is `False`, Python raises an `AssertionError`.

**Syntax:**

```python
assert condition
```

**Example:**

```python
age = 20

assert age >= 18
```

The assertion passes because `age >= 18` is `True`.

**Example with a message:**

```python
age = 15

assert age >= 18, "Age must be 18 or older"
```

This raises:

```text
AssertionError: Age must be 18 or older
```

**When to use:**

* To check assumptions in your code.
* To catch programming errors during development.
* To verify that a condition should always be true at a certain point.

**Why I use it:**

```python
def set_quantity(quantity):
    assert quantity >= 0, "Quantity cannot be negative"
```

Here, `assert` makes sure the function receives a valid value.

**Important:**
`assert` is mainly for **debugging and internal checks**, not for validating normal user input.

For example, don't rely on:

```python
assert age >= 18
```

to validate user input in a real application. Use normal validation with `if` instead.

**Think:**
`assert` → "This condition should be true."
