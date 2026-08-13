# Python Modules & Packages

## 1. Module

A **Module** is a single Python file (`.py`) that contains reusable code such as:

* Variables
* Functions
* Classes
* Statements

Example:

```python
# calculator.py

def add(a, b):
    return a + b

def subtract(a, b):
    return a - b
```

We can use the module from another file:

```python
import calculator

print(calculator.add(5, 3))
```

**Remember:**

> Module = One Python `.py` file containing reusable code.

---

## 2. Package

A **Package** is a directory/folder that contains related Python modules.

Example:

```text
my_project/
│
├── main.py
│
└── calculator/
    ├── __init__.py
    ├── basic.py
    └── scientific.py
```

Here:

* `basic.py` → Module
* `scientific.py` → Module
* `calculator/` → Package

We can import from a package:

```python
from calculator.basic import add
```

**Remember:**

> Package = A collection of related Python modules organized in a directory.

---

## 3. Standard Library Modules

Python comes with a large collection of modules that are available without installing them using `pip`.

Examples:

```python
import math
import random
import os
import sys
import datetime
import json
import re
import pathlib
import sqlite3
```

Example:

```python
import math

print(math.sqrt(25))
```

No installation is required.

### Common Standard Library Modules

| Module        | Purpose                               |
| ------------- | ------------------------------------- |
| `math`        | Mathematical operations               |
| `random`      | Random numbers                        |
| `os`          | Operating system interaction          |
| `sys`         | Python interpreter/system information |
| `datetime`    | Date and time                         |
| `json`        | JSON data                             |
| `re`          | Regular expressions                   |
| `pathlib`     | File paths and filesystem             |
| `sqlite3`     | SQLite database                       |
| `collections` | Additional data structures            |

---

## 4. Third-Party Packages

Third-party packages are libraries developed outside Python's standard library.

They usually need to be installed using `pip`.

Examples:

```bash
pip install pandas
pip install numpy
pip install requests
pip install fastapi
```

Then they can be imported:

```python
import pandas
```

Example:

```python
import requests

response = requests.get("https://example.com")
```

---

## 5. Quick Comparison

```text
Python
│
├── Standard Library
│   ├── math
│   ├── random
│   ├── os
│   ├── datetime
│   └── json
│
└── Third-Party Packages
    ├── pandas
    ├── numpy
    ├── requests
    └── fastapi
```

### Important Definitions

```text
Module
    ↓
One .py file

Package
    ↓
Collection of related Python modules

Standard Library
    ↓
Modules/packages that come with Python

Third-Party Package
    ↓
External library usually installed with pip
```

## Key Idea

> **Module = one Python file.**
> **Package = collection of related modules.**
> **Standard Library = Python's built-in collection of reusable modules/packages.**
> **Third-Party Package = external library usually installed using `pip`.**

### Important Note

In casual Python discussions, people often call standard-library modules "built-in modules." Technically, **built-in modules** and **standard-library modules** are not exactly the same thing. For now, the important distinction is:

* `math`, `os`, `json` → available with Python installation
* `pandas`, `numpy`, `requests` → usually installed separately with `pip`
# `os` and `sys` Modules

Both `os` and `sys` are part of Python's **Standard Library**, so they do not need to be installed with `pip`.

---

# 1. `os` Module

`os` stands for **Operating System**.

It allows Python to interact with the **Operating System**.

```python
import os
```

## Common Uses

### Get Current Working Directory

```python
print(os.getcwd())
```

Returns the directory where the Python program is currently running.

Example:

```text
/home/kirollos/projects
```

---

### Change Current Directory

```python
os.chdir("/home/kirollos")
```

Changes the current working directory.

---

### List Files and Directories

```python
print(os.listdir())
```

Example:

```text
['main.py', 'data.csv', 'notes.md']
```

You can also specify a directory:

```python
print(os.listdir("/home/kirollos"))
```

---

### Create a Directory

```python
os.mkdir("data")
```

For nested directories:

```python
os.makedirs("data/raw/2026")
```

---

### Remove a Directory

```python
os.rmdir("data")
```

For nested directories:

```python
os.removedirs("data/raw/2026")
```

---

### Environment Variables

One of the most important uses of `os` in backend and deployment.

```python
api_key = os.getenv("API_KEY")
```

Example:

```python
import os

api_key = os.getenv("API_KEY")

print(api_key)
```

Environment variables are commonly used with:

* `.env`
* Docker
* AWS
* FastAPI
* Django
* Database credentials
* API keys

---

# 2. `sys` Module

`sys` provides access to information and functionality related to the **Python interpreter and runtime environment**.

```python
import sys
```

## Common Uses

### Python Version

```python
print(sys.version)
```

Or:

```python
print(sys.version_info)
```

---

### Python Executable

```python
print(sys.executable)
```

This shows which Python executable is currently running.

Example:

```text
/home/kirollos/venv/bin/python
```

This is especially useful when working with:

* Virtual environments
* Multiple Python versions
* Debugging Python installations

---

### Command-Line Arguments

`sys.argv` contains arguments passed to the Python program from the command line.

Example:

```python
# main.py

import sys

print(sys.argv)
```

Run:

```bash
python main.py hello 123
```

Output:

```python
['main.py', 'hello', '123']
```

Therefore:

```python
sys.argv[0]  # main.py
sys.argv[1]  # hello
sys.argv[2]  # 123
```

---

### Exit the Program

```python
sys.exit()
```

You can also provide a message:

```python
sys.exit("Something went wrong")
```

---

# 3. Main Difference

The easiest way to remember the difference:

```text
os
│
└── Python ↔ Operating System
```

`os` is mainly used to interact with the **Operating System**.

```text
sys
│
└── Python ↔ Python Interpreter
```

`sys` is mainly used to interact with the **Python runtime/interpreter**.

---

# 4. Quick Reference

## `os`

```python
import os

os.getcwd()       # Current directory
os.chdir()        # Change directory
os.listdir()      # List files/directories
os.mkdir()        # Create directory
os.makedirs()     # Create nested directories
os.rmdir()        # Remove directory
os.getenv()       # Get environment variable
```

## `sys`

```python
import sys

sys.version       # Python version
sys.version_info  # Detailed version information
sys.executable    # Python executable path
sys.argv          # Command-line arguments
sys.exit()        # Exit the program
```

---

# Key Idea

> **`os` → interact with the Operating System.**

> **`sys` → interact with the Python interpreter/runtime.**

Both are part of Python's **Standard Library** and normally do not require `pip install`.

# Python `os` & `sys` Modules

## 1. Environment Variables

An **Environment Variable** is a piece of information in the form:

```text
name → value
```

A process can access these variables to get or set information, especially configuration information.

### Common Linux Environment Variables

| Variable | Meaning                   |
| -------- | ------------------------- |
| `HOME`   | User's home directory     |
| `USER`   | Current username          |
| `PWD`    | Current working directory |

Example:

```bash
echo $PWD
```

Example output:

```text
/home/moustafa/workspaces/
```

---

# 2. `PYTHONPATH`

`PYTHONPATH` is an **Environment Variable**.

Its value is a list of directories.

The primary purpose is to:

> Add paths where Python can find user-defined modules.

For example, if you have:

```text
project/
├── main.py
└── misc/
    └── mymodule.py
```

You can add `misc/` to `PYTHONPATH` so that Python can search this directory when importing modules.

---

# 3. `PYTHONPATH` and `sys.path`

One of the most important relationships:

```text
PYTHONPATH
    ↓
Directories are added
    ↓
sys.path
    ↓
Python searches these directories
    ↓
import module
```

`PYTHONPATH` contains additional directories that are added to Python's `sys.path`.

Therefore, when Python executes:

```python
import mymodule
```

Python searches through the directories in:

```python
sys.path
```

---

# 4. `os` Module

The `os` module allows Python to interact with the operating system.

One important use mentioned in this topic is accessing **Environment Variables** from Python.

Import:

```python
import os
```

The `os` module can be used to work with environment variables from inside a Python program.

---

# 5. `sys` Module

The `sys` module provides access to information and functionality related to the Python runtime.

An important concept is:

```python
sys.path
```

`sys.path` is a list of directories that Python uses when searching for modules.

Example:

```python
import sys

print(sys.path)
```

You will get a list of directories that Python searches when resolving imports.

---

# 6. Changing `PYTHONPATH` from Linux

You can modify `PYTHONPATH` from the operating system.

There are two possibilities:

* Change it for the current session.
* Change it permanently.

## Print all Environment Variables

```bash
printenv
```

---

## Print Current `PYTHONPATH`

```bash
echo $PYTHONPATH
```

---

## Change `PYTHONPATH` for the Current Session

```bash
export PYTHONPATH=$PYTHONPATH:/home/moustafa/misc
```

This adds:

```text
/home/moustafa/misc
```

to the existing `PYTHONPATH`.

The change applies to the current session.

---

# 7. Important Relationship

Remember this chain:

```text
Operating System
      ↓
Environment Variables
      ↓
PYTHONPATH
      ↓
Additional Python directories
      ↓
sys.path
      ↓
Python import mechanism
```

---

# 8. Quick Revision

### Environment Variable

```text
name → value
```

Used by processes to access information/configuration.

### `PYTHONPATH`

An environment variable containing directories that Python should additionally search for user-defined modules.

### `sys.path`

A Python list containing directories searched when Python looks for modules.

### `os`

Python module used to interact with the operating system, including environment variables.

### `sys`

Python module related to the Python runtime, including the module search path `sys.path`.

---

# 9. Linux Commands to Remember

```bash
printenv
```

Print environment variables.

```bash
echo $PYTHONPATH
```

Print the current `PYTHONPATH`.

```bash
export PYTHONPATH=$PYTHONPATH:/path/to/directory
```

Add a directory to `PYTHONPATH` for the current session.

---

# Key Takeaways

1. Environment Variables store information that processes can access.
2. `PYTHONPATH` is an Environment Variable.
3. `PYTHONPATH` is mainly used to add paths for user-defined modules.
4. Directories from `PYTHONPATH` are added to `sys.path`.
5. `sys.path` controls directories Python searches when importing modules.
6. `os` can be used to access Environment Variables from Python.
7. `printenv` displays environment variables on Linux.
8. `echo $PYTHONPATH` displays the current `PYTHONPATH`.
9. `export` can change `PYTHONPATH` for the current session.
10. Permanent changes depend on the operating system and shell configuration.
# Circular Import in Python

## 1. What is Circular Import?

A **Circular Import** happens when two or more Python modules depend on each other directly or indirectly.

The simplest case:

```text
A → B
↑   ↓
└───┘
```

Meaning:

```text
A imports B
B imports A
```

---

## 2. Simple Example

### `a.py`

```python
from b import func_b

def func_a():
    print("A")
```

### `b.py`

```python
from a import func_a

def func_b():
    print("B")
```

Here:

```text
a.py
  ↓ imports
b.py
  ↓ imports
a.py
```

This creates a **Circular Import**.

---

# 3. Why Does It Happen?

When Python imports a module, it starts executing that module.

For example:

```python
import a
```

Python starts:

```text
a.py
  ↓
import b
  ↓
b.py
  ↓
import a
```

But `a.py` has **not finished executing yet**.

So `a` is only **partially initialized**.

This can lead to errors such as:

```text
ImportError: cannot import name ...
from partially initialized module ...
```

---

# 4. Think of It as a Dependency Graph

Modules can be viewed as a dependency graph.

### Normal dependency

```text
A → B → C
```

This is one-directional.

### Circular dependency

```text
A → B → C
↑       ↓
└───────┘
```

Here:

```text
A imports B
B imports C
C imports A
```

There is a **cycle**.

Therefore, a Circular Import is better understood as a **cycle in the module dependency graph**, not a tree.

---

# 5. Direct vs Indirect Circular Import

## Direct Circular Import

```text
A → B
↑   ↓
└───┘
```

```text
A imports B
B imports A
```

---

## Indirect Circular Import

```text
A → B → C
↑       ↓
└───────┘
```

```text
A imports B
B imports C
C imports A
```

The cycle can involve more than two modules.

---

# 6. How to Solve Circular Imports

The best solution is usually to **reorganize the dependencies**.

Instead of:

```text
A → B
↑   ↓
└───┘
```

Create a third module for shared functionality:

```text
       common
       ↑    ↑
       │    │
       A    B
```

For example:

```text
project/
├── a.py
├── b.py
└── common.py
```

Put shared functionality inside:

```python
# common.py

def shared_function():
    pass
```

Then:

```python
# a.py

from common import shared_function
```

and:

```python
# b.py

from common import shared_function
```

Now there is no circular dependency.

---

# 7. Important Concept

A good module dependency should generally move in one direction:

```text
A → B → C
```

Avoid:

```text
A → B → C
↑       ↓
└───────┘
```

---

# 8. Quick Revision

| Concept               | Meaning                                                 |
| --------------------- | ------------------------------------------------------- |
| Module                | A Python file that can be imported                      |
| Dependency            | One module depends on another                           |
| Circular Import       | Modules depend on each other in a cycle                 |
| Direct Cycle          | `A → B → A`                                             |
| Indirect Cycle        | `A → B → C → A`                                         |
| Partially Initialized | Module started importing but has not finished execution |
| Best Solution         | Reorganize dependencies / extract shared code           |

---

# Key Takeaway

```text
Circular Import
=
A imports B
+
B imports A
```

Or indirectly:

```text
A → B → C → A
```

The main problem is that Python tries to use a module while that module is still being initialized.

> **Circular Import = a cycle in the module dependency graph.**
