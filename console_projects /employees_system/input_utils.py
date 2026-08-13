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
