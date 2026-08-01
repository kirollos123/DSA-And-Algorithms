# Dictionary & Set in Python

## Overview

Both **Dictionary** and **Set** are built on top of a **Hash Table**, which makes most operations very fast (average **O(1)**).

---

# Dictionary

## Definition

A **Dictionary** stores data as **Key → Value** pairs.

```python
student = {
    "name": "Ali",
    "age": 20,
    "city": "Alex"
}
```

---

## Storage

- Implemented using a **Hash Table**.
- Each key is hashed to determine where its value is stored.
- Keys must be **hashable** (e.g. `int`, `str`, `tuple`).

---

## Time Complexity

| Operation | Average | Worst |
|----------|---------|-------|
| Access | O(1) | O(n) |
| Search (by key) | O(1) | O(n) |
| Insertion | O(1) | O(n) |
| Update | O(1) | O(n) |
| Deletion | O(1) | O(n) |
| Traversal | O(n) | O(n) |

---

## Common Operations

### Insert

```python
student["grade"] = "A"
```

### Update

```python
student["age"] = 21
```

### Access

```python
print(student["name"])
```

Safer access:

```python
print(student.get("name"))
```

### Delete

```python
del student["age"]
```

or

```python
student.pop("age")
```

### Traverse

```python
for key in student:
    print(key)

for value in student.values():
    print(value)

for key, value in student.items():
    print(key, value)
```

---

## Advantages

- Fast lookup.
- Fast insertion.
- Fast deletion.
- Easy mapping between keys and values.

---

## Disadvantages

- Uses more memory than arrays.
- Keys must be hashable.
- Lookup is based on keys only.

---

## Common Use Cases

- User information
- Frequency counting
- Caching
- Lookup tables
- Configuration data

---

## Example

```python
text = "banana"

freq = {}

for ch in text:
    freq[ch] = freq.get(ch, 0) + 1

print(freq)
```

Output

```python
{'b': 1, 'a': 3, 'n': 2}
```

---

# Set

## Definition

A **Set** stores **unique values** only.

Duplicate values are automatically removed.

```python
numbers = {1, 2, 3, 4}
```

---

## Storage

- Implemented using a **Hash Table**.
- Elements must be hashable.

---

## Time Complexity

| Operation | Average | Worst |
|----------|---------|-------|
| Search | O(1) | O(n) |
| Insertion | O(1) | O(n) |
| Deletion | O(1) | O(n) |
| Traversal | O(n) | O(n) |

> A Set has **no indexing**, so random access is not supported.

---

## Common Operations

### Add

```python
numbers.add(5)
```

### Remove

```python
numbers.remove(5)
```

Safe remove:

```python
numbers.discard(5)
```

### Membership Test

```python
print(5 in numbers)
```

### Traverse

```python
for num in numbers:
    print(num)
```

---

## Set Operations

### Union

```python
A | B
```

or

```python
A.union(B)
```

---

### Intersection

```python
A & B
```

or

```python
A.intersection(B)
```

---

### Difference

```python
A - B
```

---

### Symmetric Difference

```python
A ^ B
```

---

## Advantages

- Stores unique elements.
- Very fast membership checking.
- Easy duplicate removal.
- Efficient set operations.

---

## Disadvantages

- No indexing.
- Unordered collection.
- Elements must be hashable.

---

## Common Use Cases

- Remove duplicates
- Membership checking
- Finding common elements
- Comparing collections

---

## Example

```python
nums = [1, 1, 2, 3, 3, 4]

unique = set(nums)

print(unique)
```

---

# Dictionary vs Set

| Feature | Dictionary | Set |
|---------|------------|-----|
| Stores | Key → Value | Values only |
| Duplicate Keys | ❌ | N/A |
| Duplicate Values | ✅ | ❌ |
| Index Access | ❌ | ❌ |
| Hash Table | ✅ | ✅ |
| Search | O(1) | O(1) |
| Insert | O(1) | O(1) |
| Delete | O(1) | O(1) |

---

# Interview Notes

## Dictionary

- Stores key-value pairs.
- Keys must be unique.
- Implemented using a hash table.
- Average lookup is **O(1)**.

## Set

- Stores unique values only.
- Implemented using a hash table.
- Excellent for duplicate removal and membership testing.
- No indexing.

---

# Key Takeaways

- Dictionary = **Key → Value**
- Set = **Unique Values**
- Both use **Hash Tables**
- Most operations are **O(1)** on average
- Sets do **not** support indexing
- Dictionary keys and Set elements must be **hashable**