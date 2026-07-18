class Employee:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def __str__(self):
        return f'Employee {self.name} is {self.age} years old'

    def __repr__(self):
        return f'Employee(name="{self.name}", age={self.age})'

kiro = Employee('kiro', 25)
print(f'{kiro}')
print(f'kiro!r')
print(f"{2*3+1}")
name = 'kirollos'
print(f"{name.lower()} like work with data")
