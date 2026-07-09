class emploee:
    def __init__(self):
        self.id = 0
lst=[1,2,3,4]
emp=emploee()
tu=(lst,emp)
print(tu[0])
lst[0]=100
emp.id=20
print(tu[0])