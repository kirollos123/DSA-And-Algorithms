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
