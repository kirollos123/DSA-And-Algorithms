def fun():
    fun.counter += 1
    print(fun.counter)


fun.counter = 0

print(type(fun))
print(fun.__dict__)

fun()
fun()
fun()
