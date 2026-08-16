def read_int(msg):
    try:
        age = input(msg)
        age = int(age)
    except:
        print("inavd")
        age = None
    else:
        print("Thnaks")
    finally:
        print("end function :")
    return age


age = read_int(":enter age ")
print(age)
