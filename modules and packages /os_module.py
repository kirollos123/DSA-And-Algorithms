import os 
print(list(os.environ.keys()))
print((os.environ['HOME']))
print((os.environ['USER']))
print((os.environ['PWD']))

print(os.environ.get('PYTHONHOME'))
print(os.environ.get('nnnnn'))
os.environ['nnnnn']= 'only sesion'
