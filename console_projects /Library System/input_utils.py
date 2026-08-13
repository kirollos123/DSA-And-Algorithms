def input_valid_int(msg, start=0, end=None):
    while True:
        inp = input(msg)

        if not inp.isdecimal():
            print("Invalid input. Try again!")
            continue

        inp = int(inp)

        if start is not None and end is not None:
            if not (start <= inp <= end):
                print("Invalid input. Try again!")
                continue

        return inp
