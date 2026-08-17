# Exception Handling in Python

## 1. What is Exception Handling?

An **exception** is an error that occurs while a program is running and interrupts the normal flow of execution.

Examples:

```python
x = 10 / 0
```

```python
age = int("hello")
```

```python
numbers = [1, 2, 3]
print(numbers[10])
```

Exception handling allows us to **detect, handle, and recover from runtime errors** instead of letting the program crash.

---

## 2. Basic `try` / `except`

The basic syntax is:

```python
try:
    # code that may raise an exception
except:
    # code that handles the exception
```

Example:

```python
try:
    age = int(input("Enter your age: "))
except:
    print("Invalid input")
```

If the user enters:

```text
abc
```

`int()` raises a `ValueError`, and the `except` block runs.

---

## 3. Catching Specific Exceptions

It is better to catch the **specific exception** instead of using a bare `except`.

```python
try:
    age = int(input("Enter your age: "))
except ValueError:
    print("Please enter a valid number")
```

Common Python exceptions:

| Exception           | Meaning                          |
| ------------------- | -------------------------------- |
| `ValueError`        | Correct type but invalid value   |
| `TypeError`         | Incorrect type                   |
| `ZeroDivisionError` | Division by zero                 |
| `IndexError`        | Invalid list/index position      |
| `KeyError`          | Dictionary key doesn't exist     |
| `FileNotFoundError` | File doesn't exist               |
| `NameError`         | Variable doesn't exist           |
| `AttributeError`    | Object doesn't have an attribute |
| `ImportError`       | Import problem                   |

---

## 4. Multiple Exceptions

You can handle different exceptions separately:

```python
try:
    number = int(input("Enter number: "))
    result = 100 / number

except ValueError:
    print("You must enter a number")

except ZeroDivisionError:
    print("Cannot divide by zero")
```

---

## 5. `else`

The `else` block runs **only if no exception occurs**.

```python
try:
    age = int(input("Enter your age: "))

except ValueError:
    print("Invalid input")

else:
    print(f"Your age is {age}")
```

Execution flow:

```text
try
 │
 ├── exception → except
 │
 └── no exception → else
```

---

## 6. `finally`

The `finally` block **always runs**, whether an exception occurs or not.

```python
try:
    number = int(input("Enter number: "))

except ValueError:
    print("Invalid input")

finally:
    print("Program finished")
```

`finally` is commonly used for cleanup operations such as:

* Closing files
* Closing database connections
* Releasing resources
* Closing network connections

---

## 7. Complete Structure

Python allows:

```python
try:
    # risky code

except SomeException:
    # handle exception

else:
    # runs when no exception occurs

finally:
    # always runs
```

Example:

```python
try:
    number = int(input("Enter number: "))
    result = 100 / number

except ValueError:
    print("Invalid number")

except ZeroDivisionError:
    print("Cannot divide by zero")

else:
    print("Result:", result)

finally:
    print("Execution completed")
```

---

## 8. Getting the Exception Object

You can store the exception using `as`.

```python
try:
    number = int("hello")

except ValueError as error:
    print("Error:", error)
```

Output:

```text
Error: invalid literal for int() with base 10: 'hello'
```

This is useful for debugging and logging.

---

## 9. Raising Exceptions with `raise`

You can manually raise an exception using `raise`.

```python
age = -5

if age < 0:
    raise ValueError("Age cannot be negative")
```

`raise` is useful when your program detects invalid data or an invalid state.

---

## 10. Custom Exceptions

You can create your own exception classes.

```python
class InvalidAgeError(Exception):
    pass
```

Then:

```python
age = -1

if age < 0:
    raise InvalidAgeError("Age cannot be negative")
```

And handle it:

```python
try:
    age = -1

    if age < 0:
        raise InvalidAgeError("Age cannot be negative")

except InvalidAgeError as error:
    print(error)
```

Custom exceptions are especially useful in larger applications.

---

## 11. Exception Hierarchy

Python exceptions are organized in a hierarchy.

For example:

```text
BaseException
    │
    └── Exception
         │
         ├── ValueError
         ├── TypeError
         ├── IndexError
         ├── KeyError
         └── ZeroDivisionError
```

Because these exceptions inherit from `Exception`, you can technically do:

```python
try:
    ...
except Exception:
    print("Something went wrong")
```

However, specific exceptions are usually better.

---

## 12. Avoid Bare `except`

Avoid:

```python
try:
    ...
except:
    print("Error")
```

Prefer:

```python
try:
    ...
except ValueError:
    print("Invalid value")
```

Why?

Because a bare `except` can hide unexpected problems and make debugging difficult.

---

## 13. Exception Handling vs Validation

These are related but not the same.

Validation checks whether input is acceptable:

```python
age = int(input("Age: "))

if age < 0:
    print("Invalid age")
```

Exception handling deals with operations that **raise exceptions**:

```python
try:
    age = int(input("Age: "))
except ValueError:
    print("Age must be a number")
```

In real applications, both are commonly used.

---

## 14. Example: Safe Integer Input

A reusable function:

```python
def read_int(message):
    try:
        return int(input(message))

    except ValueError:
        print("Invalid input")
        return None


age = read_int("Enter age: ")
print(age)
```

A better version that keeps asking:

```python
def read_int(message):
    while True:
        try:
            return int(input(message))

        except ValueError:
            print("Please enter a valid integer.")


age = read_int("Enter age: ")
print(age)
```

---

## 15. Best Practices

### 1. Catch specific exceptions

```python
except ValueError:
```

instead of:

```python
except:
```

### 2. Keep the `try` block small

Prefer:

```python
try:
    age = int(user_input)
except ValueError:
    ...
```

instead of putting the entire program inside `try`.

### 3. Don't silently ignore errors

Avoid:

```python
except Exception:
    pass
```

This can hide serious bugs.

### 4. Use meaningful error messages

```python
except ValueError:
    print("Age must be an integer.")
```

### 5. Use `finally` for cleanup

```python
try:
    file = open("data.txt")
    ...
finally:
    file.close()
```

For files, however, prefer a context manager:

```python
with open("data.txt") as file:
    data = file.read()
```

---

## 16. Key Mental Model

Think about exception handling as:

```text
TRY
 ↓
Run risky operation
 ↓
Did an exception happen?
 ├── YES → EXCEPT
 │          Handle the error
 │
 └── NO  → ELSE
            Continue normally

FINALLY
 ↓
Cleanup / always execute
```

The main keywords are:

```text
try       → try risky code
except    → handle an exception
else      → run when no exception occurs
finally   → always run
raise     → manually raise an exception
```

### Core Principle

> **Exceptions are for handling exceptional runtime situations, not for replacing normal program logic.**
