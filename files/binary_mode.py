lst =[120 ,225,100]
with open("data.binary ", "wb")as writer:  # wb = write binary
  binary_format = bytearray(lst)  # [120 ,225,100]  bytearray(b'x\xe1d')
  writer.write(binary_format)
  str_encoded = bytearray('abc ','utf-8')
  writer.write(str_encoded)
with open("data.binary ", "rb")as reader:  # rb = read binary  b'x\xe1dabc '
  lst2=list(reader.read())
  print(lst2)

