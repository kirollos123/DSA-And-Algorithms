def input_valid_int(msg, start=0, end=None):
    #  keep iterating till the given input is valid
    while True:
        inp = input(msg)
        if not inp.isdecimal():
            print("invalid input.try agin !")
        elif start is not None and end is not None:
            if not (start <= int(inp) <= end):
                print("Invalid range. Try again!")
            else:
                return int(inp)
        else:
            return int(inp)


class Employee:
    def __init__(self, name, age, salary):
        self.name, self.age, self.salary = name, age, salary

    def __str__(self):
        return f'Employee :{self.name}  has age  {self.age} and salary  {self.salary}'

    def __repr__(self):
        return f'Employee(name="{self.name}", age={self.age}, salary={self.salary})'


class EmployeeManger:
    def __init__(self):
        self.employees = []

    def add_employee(self):
        print('\n Enter employee data :')
        name = input('Enter the Name:')
        age = input_valid_int('Enter the age :')
        salary = input_valid_int('Enter the salary:')
        self.employees.append(Employee(name, age, salary))


def list_employees(self):
    if len(self.employees) == 0:
        print('\n No employee at the moment')
        return
    print('\n** Employee list**')
    for emp in self.employees:
        print(emp)


def delet_employees_with_age(self, age_from, age_to):
    for idx in range(len(self.employees)-1, -1, -1):
        emp = self.employees[idx]
        if age_from <= emp.age <= age_to:
            print('\t Deleting', emp.name)
            self.employees.pop(idx)


def find_employee_by_name(self, name):
    for emp in self.employees:
        if emp.name == name:
            return emp
    return None


def update_salary_by_name(self, name, salary):
    emp = self.find_employee_by_name(name)  # calling function
    if emp is None:
        print('error :no employee with such a name')
    else:
        emp.salary = salary


class FrontendManger:
    def __init__(self):
        self.employees_manger = EmployeeManger()

    def print_menu(self):
        print('\n program Options')
        massage = [
            '1) Add a new employee',
            '2) List all employees',
            '3) Delete by age range',
            '4) Update salary given a name',
            '5) End the program'
        ]
        print('\n '.join(massage))
        msg = f'Enter your choice (from 1 to {len(massage)}):'
        return input_valid_int(msg, 1, len(massage))

    def run(self):
        while True:
            choice = self.print_menu()
            if choice == 1:
                self.employees_manger.add_employees()
            elif choice == 2:
                self.employees_manger.list_employees()
            elif choice == 3:
                age_from = input_valid_int('enter age from')
                age_to = input_valid_int('enter age to')
                self.employees_manger.delete_by_age_range(age_from, age_to)
            else:
                break


if __name__ == '__main__':
    app = FrontendManger()
    app.run()
