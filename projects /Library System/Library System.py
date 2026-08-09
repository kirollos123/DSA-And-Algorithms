def input_valid_int(msg, start=0, end=None):
    while True:
        inp = input(msg)
        if not inp.isdecimal():
            print('Invalid input. Try again!')
        elif start is not None and end is not None:
            if not (start <= int(inp) <= end):
                print('Invalid input. Try again!')
            else:
                return int(inp)
        else:
            return int(inp)


class Book:
    def __init__(self, name, id, total_quntity):
        self.name = name
        self.id = id
        self.total_quntity = total_quntity
        self.total_borrowed = 0
        # methods

        def borrow(self):
            if self.total_quntity - total_borrowed == 0:
                return False
            self.total_borrowed += 1
            return True

        def return_copy(self):
            assert self.total_borrowed > 0
            self.total_borrowed -= 1

        def __repr__(self):
            return f'book name :{self .name:20}-id :{self.id}-total quantity :{self.total_quntity} - '\
                f'total borrowed: {self.total_borrowed}'


class User:
    def __init__(self, name, id):
        self.name = name
        self.id = id
        borrowed_books = []

    def borrow(self, book):
        self.borrowed_books.append(book)

    def is_borrowed(self, book):
        for mybook in self.borrowed_books:
            if mybook.id == book.id:
                return True
            return False

    def return_book(self, book):
        for idx, mybook in enumerate(self.borrowed_books):
            if mybook.id == book.id:
                del self.borrowed_books[idx]
                break

    def simple_repr(self, is_detailed=False):
        ret = f'User name: {self.name:15} - id: {self.id}'
        if is_detailed and self.borrowed_books:
            ret += f'\t{str(book)}\n'
        return ret


def __repr__(self):
    return self.simple_repr(True)
