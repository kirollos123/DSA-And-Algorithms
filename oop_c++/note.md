# Object-Oriented Programming (OOP) Fundamentals

---

# 1. What is OOP?

## Definition

Object-Oriented Programming (OOP) is a programming paradigm that organizes software around **objects** rather than functions.

An object contains:

- Data (Attributes / State)
- Behavior (Methods / Functions)

---

## Why OOP?

OOP helps developers build software that is:

- Modular
- Reusable
- Easier to maintain
- Easier to extend
- Closer to real-world modeling

---

## Procedural Programming vs OOP

| Procedural | OOP |
|------------|-----|
| Functions are the main building blocks | Objects are the main building blocks |
| Data and functions are separate | Data and behavior are grouped together |
| Less reusable | Highly reusable |
| Difficult to maintain in large systems | Easier to maintain and scale |

---

# 2. Class and Object

## Class

A class is a blueprint for creating objects.

Example:

```
Car
```

A class defines:

- Attributes
- Methods

---

## Object

An object is an instance of a class.

Example:

```
Car
├── Color = Red
├── Speed = 120
└── Start()
```

Multiple objects can be created from one class.

---

# 3. Four Pillars of OOP

## 1. Encapsulation

### Definition

Encapsulation means bundling data and methods together inside a class while restricting direct access to internal data.

Think of it as protecting an object's state.

Example:

```
Bank Account

Balance
Deposit()
Withdraw()
```

Users should not modify Balance directly.

Instead:

```
Deposit()
Withdraw()
```

manage the balance safely.

---

### Benefits

- Data protection
- Better validation
- Easier maintenance
- Reduced bugs

---

## 2. Inheritance

### Definition

Inheritance allows a class to acquire properties and behaviors from another class.

```
Animal
    ↑
  Dog
```

Dog automatically gets common features from Animal.

---

### Benefits

- Code reuse
- Less duplication
- Easier maintenance
- Better organization

---

## 3. Polymorphism

### Definition

Polymorphism means **one interface, many implementations.**

The same method name can behave differently depending on the object.

Example:

```
Shape

Draw()
```

Each shape draws itself differently.

```
Circle → Draw()

Rectangle → Draw()

Triangle → Draw()
```

---

### Types

### Compile-time Polymorphism

Examples:

- Function Overloading
- Operator Overloading

---

### Run-time Polymorphism

Examples:

- Method Overriding
- Virtual Functions (C++)

---

## 4. Abstraction

Although not covered deeply yet, abstraction means:

Hide unnecessary implementation details and expose only what users need.

Example:

Driving a car.

You use:

- Steering wheel
- Brake
- Accelerator

You don't need to know how the engine works internally.

---

# 4. Relationships Between the Concepts

```
Class
   │
Creates
   ▼
Object
   │
Uses
   ▼
Encapsulation

Class
   ▲
   │
Inheritance

Objects
   │
Behave differently
   ▼
Polymorphism
```

---

# 5. Complex Class Example

A complex class usually contains:

- Private data
- Constructors
- Methods
- Validation
- Relationships with other classes

Example:

```
Student

Attributes
----------
id
name
age
gpa

Methods
-------
registerCourse()
dropCourse()
calculateGPA()
printInfo()
```

The goal is to model a real-world entity.

---

# Key Takeaways

- OOP models real-world entities using objects.
- A class is a blueprint.
- An object is an instance of a class.
- Encapsulation protects data.
- Inheritance enables code reuse.
- Polymorphism allows one interface with many implementations.
- Abstraction hides unnecessary complexity.

---

# Interview Questions

1. What is Object-Oriented Programming?
2. Why do we use OOP?
3. What is the difference between a class and an object?
4. What are the four pillars of OOP?
5. Explain encapsulation with an example.
6. Explain inheritance.
7. Explain polymorphism.
8. What is the difference between overloading and overriding?
9. What are the advantages of OOP?
10. When should OOP be preferred over procedural programming?