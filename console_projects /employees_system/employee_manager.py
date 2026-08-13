from employeee import Employee
from input_utils import input_valid_int


class EmployeeManager:
    def __init__(self):
        self.employees = []

    def add_employee(self):
        print("\nEnter employee data:")

        name = input("Enter the Name: ")
        age = input_valid_int("Enter the age: ")
        salary = input_valid_int("Enter the salary: ")

        self.employees.append(
            Employee(name, age, salary)
        )

    def list_employees(self):
        if len(self.employees) == 0:
            print("\nNo employee at the moment")
            return

        print("\n** Employee list **")

        for emp in self.employees:
            print(emp)

    def delete_employees_with_age(self, age_from, age_to):
        for idx in range(len(self.employees) - 1, -1, -1):
            emp = self.employees[idx]

            if age_from <= emp.age <= age_to:
                print("\tDeleting", emp.name)
                self.employees.pop(idx)

    def find_employee_by_name(self, name):
        for emp in self.employees:
            if emp.name == name:
                return emp

        return None

    def update_salary_by_name(self, name, salary):
        emp = self.find_employee_by_name(name)

        if emp is None:
            print("Error: no employee with such a name")
        else:
            emp.salary = salary
