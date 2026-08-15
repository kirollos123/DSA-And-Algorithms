# Python Files Read/Write read text
w    append text
rb   write binary
ab   read and write
w+   append and read
rb+ write/read binary, truncates file
```

---

# 4. Text Files vs Binary Files

## Text File

A text file stores textual data interpreted using a character encoding.

Example:

```python
with open("data.txt", "r", encoding="utf-8") as reader:
   data = reader.read()
```

The result is a Python `str`.

```python
type(data)
# str
```

## Binary File

A binary file is handled as raw bytes.

```python
with open("data.bin", "rb") as reader:
   data = reader.read()
```

The result is a Python `bytes`.

```python
type(data)
# bytes
```

The key distinction:

```text
Text:
str bytes file
```

---

# 5. File Paths

When you write:

```python
open("input.txt")
```

Python resolves the relative path from the **current working directory (CWD)**.

It does NOT necessarily use the directory containing the Python script.

Check the current working directory:

```python
import os

print(os.getcwd())
```

Example:

```text
/home/kirollos/DSA-And-Algorithms/files
```

If `input.txt` does not exist there, you can get:

```text
FileNotFoundError
```

## Relative Path

```python
open("input.txt")
```

or:

```python
open("../input.txt")
```

## Absolute Path

```python
open("/home/kirollos/DSA-And-Algorithms/input.txt")
```

---

# 6. pathlib Reverse Lines Example

Suppose:

```text
input.txt

first
second
third
```

We want:

```text
output.txt

third
second
first
```

Code:

```python
input_path = "input.txt"
output_path = "output.txt"

with open(input_path, "r", encoding="utf-8") as reader, \
    open(output_path, "w", encoding="utf-8") as writer:

   lines = reader.readlines()
   writer.writelines(reversed(lines))
```

Important distinction:

```python
reader.readline()
```

reads ONE line.

```python
reader.readlines()
```

reads ALL lines.

Therefore, if the goal is to reverse the order of lines, `readlines()` is appropriate.

---

# 16. `readline()` vs `readlines()` vs `read()`

| Method | Result |
|---|---|
| `read()` | Entire file as one string |
| `readline()` | One line |
| `readlines()` | List of all lines |
| Iterating over file | One line at a time |

Example:

```python
data = reader.read()
```

```python
line = reader.readline()
```

```python
lines = reader.readlines()
```

---

# 17. File Cursor

When a file is opened, Python maintains a current position called the file cursor/file pointer.

Example:

```python
with open("input.txt", "r", encoding="utf-8") as reader:
   print(reader.readline())
   print(reader.readline())
```

The first `readline()` moves the cursor forward.

Conceptually:

```text
first
second
third
^

cursor
```

After reading `first`:

```text
first
second
^
third
```

---

# 18. `tell()`

`tell()` returns the current file position.

```python
with open("input.txt", "r", encoding="utf-8") as reader:
   print(reader.tell())
   reader.read(5)
   print(reader.tell())
```

For binary files, the position is measured in bytes.

For text files, the position is an opaque position suitable for `seek()` rather than something you should always interpret as a simple character count.

---

# 19. `seek()`

`seek()` moves the file cursor.

```python
with open("input.txt", "r", encoding="utf-8") as reader:
   reader.read(5)
   reader.seek(0)
   print(reader.read())
```

`seek(0)` moves back to the beginning.

Common pattern:

```python
reader.seek(0)
```

means:

```text
Beginning of file
```

---

# 20. Append Mode

Use `a` when you want to add data to the end.

```python
with open("log.txt", "a", encoding="utf-8") as writer:
   writer.write("New log\n")
```

Unlike `w`, append mode does not remove the old content.

Conceptually:

```text
Existing data
     +
New data
```

---

# 21. Create Mode encode
bytes
bytes
```

using:

```python
text.encode("utf-8")
```

Convert:

```text
bytes 255
```

Example:

```python
data = bytes([65, 66, 67])

print(data)
```

Result:

```text
b'ABC'
```

Each number represents one byte.

---

# 27. `bytearray`

`bytearray` is similar to `bytes`, but mutable.

Example:

```python
data = bytearray([65, 66, 67])

print(data)
```

Result:

```text
bytearray(b'ABC')
```

You can modify it:

```python
data[0] = 90

print(data)
```

Result:

```text
bytearray(b'ZBC')
```

---

# 28. Binary Example 
Use resource
     Wrong current directory

```python
open("input.txt")
```

but the file is somewhere else.

Debug:

```python
import os
print(os.getcwd())
```

---

## Mistake 2 Confusing characters with bytes

This:

```python
"abc"
```

is `str`.

This:

```python
b"abc"
```

is `bytes`.

---

## Mistake 4 Forgetting that `w` overwrites

```python
open("data.txt", "w")
```

can erase existing content.

Use:

```python
"a"
```

when you want to append.

---

## Mistake 6 
     str
       
     File
        decode
     str
```

For binary files:

```text
Raw bytes
   
Raw bytes
```

The binary file itself does not know that:

```text
97 = 'a'
```

That interpretation comes from how your program interprets the bytes.

---

# 54. Important Rule: File Format vs File Mode

Do not confuse:

```text
file extension
```

with:

```text
file mode
```

For example:

```python
open("data.txt", "rb")
```

is allowed.

A `.txt` file can be opened in binary mode.

Similarly:

```python
open("data.bin", "r", encoding="utf-8")
```

can be used if the contents are actually text.

The extension is a convention. The mode determines how Python's I/O layer handles the data.

---

# 55. File I/O Cheat Sheet

```python
# Read all text
with open("file.txt", "r", encoding="utf-8") as f:
   data = f.read()

# Read one line
with open("file.txt", "r", encoding="utf-8") as f:
   line = f.readline()

# Read all lines
with open("file.txt", "r", encoding="utf-8") as f:
   lines = f.readlines()

# Iterate lines
with open("file.txt", "r", encoding="utf-8") as f:
   for line in f:
       print(line)

# Write
with open("file.txt", "w", encoding="utf-8") as f:
   f.write("Hello")

# Append
with open("file.txt", "a", encoding="utf-8") as f:
   f.write("New line\n")

# Binary read
with open("file.bin", "rb") as f:
   data = f.read()

# Binary write
with open("file.bin", "wb") as f:
   f.write(bytes([1, 2, 3]))

# Encode
data = "abc".encode("utf-8")

# Decode
text = data.decode("utf-8")

# Current directory
import os
print(os.getcwd())

# pathlib
from pathlib import Path
path = Path("data.txt")
print(path.exists())
```

---

# 56. Core Concepts to Remember

If you are learning Python files for programming/DSA, focus first on these:

1. `open()`
2. `with`
3. `r`, `w`, `a`, `x`
4. `rb`, `wb`
5. `read()`
6. `readline()`
7. `readlines()`
8. Iterating over a file
9. `write()`
10. `writelines()`
11. File cursor
12. `seek()`
13. `tell()`
14. Relative vs absolute paths
15. `os.getcwd()`
16. `pathlib.Path`
17. `str` vs `bytes`
18. Encoding / decoding
19. `bytes` vs `bytearray`
20. `FileNotFoundError`
21. Memory-efficient file processing
22. Text files vs binary files

The most important conceptual chain is:

```text
open()
 
read / write
  encode/decode file
```