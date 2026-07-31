class Employee :
  def __init__(self):
    self.id=10
  def __repr__(self):
    return str(self.id)
emp = Employee ()
lst =[5,8,9]
dict = {'nabil ':25.4,2:lst ,  'hey':emp}
print (dict )
lst .pop()
emp.id+=100
print(dict)
lst=[5]
print(dict)
d2=dict.copy()
print(d2['hey'] is emp)
