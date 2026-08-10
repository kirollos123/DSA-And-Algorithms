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


class Book:
    def __init__(self, name, id, total_quantity):
        self.name = name
        self.id = id
        self.total_quantity = total_quantity
        self.total_borrowed = 0

    def borrow(self):
        if self.total_quantity - self.total_borrowed == 0:
            return False

        self.total_borrowed += 1
        return True

    def return_copy(self):
        assert self.total_borrowed > 0
        self.total_borrowed -= 1

    def __repr__(self):
        return (
            f"Book name: {self.name:20} - "
            f"id: {self.id} - "
            f"total quantity: {self.total_quantity} - "
            f"total borrowed: {self.total_borrowed}"
        )


class User:
    def __init__(self, name, id):
        self.name = name
        self.id = id
        self.borrowed_books = []

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
        ret = f"User name: {self.name:15} - id: {self.id}"

        if is_detailed and self.borrowed_books:
            ret += "\nBorrowed books:\n"

            for book in self.borrowed_books:
                ret += f"{book}\n"

        return ret

    def __repr__(self):
        return self.simple_repr(True)


class BackendManager:
    def __init__(self):
        self.books = []
        self.users = []

    def add_book(self, name, id, total_quantity):
        self.books.append(Book(name, id, total_quantity))

    def get_books_with_prefix(self, prefix):
        result = []

        for book in self.books:
            if book.name.startswith(prefix):
                result.append(book)

        return result

    def add_user(self, name, id):
        self.users.append(User(name, id))

    def get_user_by_name(self, name):
        for user in self.users:
            if name == user.name:
                return user

        return None

    def get_book_by_name(self, name):
        for book in self.books:
            if name == book.name:
                return book

        return None

    def borrow_book(self, user_name, book_name):
        user = self.get_user_by_name(user_name)
        book = self.get_book_by_name(book_name)

        if user is None or book is None:
            return False

        if book.borrow():
            user.borrow(book)
            return True

        return False

    def return_book(self, user_name, book_name):
        user = self.get_user_by_name(user_name)
        book = self.get_book_by_name(book_name)

        if user is None or book is None:
            return False

        if user.is_borrowed(book):
            book.return_copy()
            user.return_book(book)
            return True

        print("This user did not borrow this book.")
        return False

    def get_users_borrowed_book(self, book_name):
        book = self.get_book_by_name(book_name)

        if book is None:
            return []

        return [
            user
            for user in self.users
            if user.is_borrowed(book)
        ]


class FrontendManager:
    def __init__(self):
        self.backend = BackendManager()
        self.add_dummy_data()

    def print_menu(self):
        print("\nProgram Options:")

        messages = [
            "Add book",
            "Print library books",
            "Print books by prefix",
            "Add user",
            "Borrow book",
            "Return book",
            "Print users borrowed book",
            "Print users",
            "Exit"
        ]

        messages = [
            f"{idx + 1}) {msg}"
            for idx, msg in enumerate(messages)
        ]

        print("\n".join(messages))

        msg = f"Enter your choice (from 1 to {len(messages)}): "

        return input_valid_int(
            msg,
            1,
            len(messages)
        )

    def add_dummy_data(self):
        self.backend.add_book("math4", "100", 3)
        self.backend.add_book("math2", "101", 5)
        self.backend.add_book("math1", "102", 4)
        self.backend.add_book("math3", "103", 2)
        self.backend.add_book("prog1", "201", 3)
        self.backend.add_book("prog2", "202", 3)

        self.backend.add_user("mostafa", "30301")
        self.backend.add_user("ali", "50501")
        self.backend.add_user("noha", "70701")
        self.backend.add_user("ashraf", "90901")

        self.backend.borrow_book("mostafa", "math3")
        self.backend.borrow_book("noha", "math3")

    def run(self):
        while True:
            choice = self.print_menu()

            if choice == 1:
                self.add_book()

            elif choice == 2:
                self.print_books()

            elif choice == 3:
                self.print_name_prefix()

            elif choice == 4:
                self.add_user()

            elif choice == 5:
                self.borrow_book()

            elif choice == 6:
                self.return_book()

            elif choice == 7:
                self.print_users_borrowed_book()

            elif choice == 8:
                self.print_users()

            elif choice == 9:
                print("Goodbye!")
                break

    def add_book(self):
        print("\nEnter book info:")

        name = input("Book name: ")
        id = input("Book ID: ")

        total_quantity = input_valid_int(
            "Total quantity: ",
            1
        )

        self.backend.add_book(
            name,
            id,
            total_quantity
        )

        print("Book added successfully.")

    def print_books(self):
        self.print_name_prefix(
            just_print_all=True
        )

    def print_name_prefix(self, just_print_all=False):
        prefix = ""

        if not just_print_all:
            prefix = input(
                "Enter book name prefix: "
            )

        books = self.backend.get_books_with_prefix(
            prefix
        )

        if not books:
            print("No books found.")
            return

        books_str = "\n".join(
            str(book)
            for book in books
        )

        print(books_str)

    def add_user(self):
        print("\nEnter user info:")

        name = input("User name: ")
        id = input("User ID: ")

        self.backend.add_user(
            name,
            id
        )

        print("User added successfully.")

    def read_user_name_and_book_name(self, trials=3):
        while trials > 0:
            print("\nEnter user name and book name:")

            user_name = input("User name: ")

            if self.backend.get_user_by_name(
                user_name
            ) is None:
                print("Invalid user name!")
                trials -= 1
                continue

            book_name = input("Book name: ")

            if self.backend.get_book_by_name(
                book_name
            ) is None:
                print("Invalid book name!")
                trials -= 1
                continue

            return user_name, book_name

        print("You did several trials! Try later.")

        return None, None

    def borrow_book(self):
        user_name, book_name = (
            self.read_user_name_and_book_name()
        )

        if user_name is None or book_name is None:
            return

        success = self.backend.borrow_book(
            user_name,
            book_name
        )

        if success:
            print("Book borrowed successfully.")
        else:
            print("Failed to borrow the book.")

    def return_book(self):
        user_name, book_name = (
            self.read_user_name_and_book_name()
        )

        if user_name is None or book_name is None:
            return

        success = self.backend.return_book(
            user_name,
            book_name
        )

        if success:
            print("Book returned successfully.")

    def print_users_borrowed_book(self):
        book_name = input("Book name: ")

        if self.backend.get_book_by_name(
            book_name
        ) is None:
            print("Invalid book name!")
            return

        users_list = (
            self.backend.get_users_borrowed_book(
                book_name
            )
        )

        if not users_list:
            print("\nNo one borrowed this book.")

        else:
            print(
                "\nList of users who borrowed this book:"
            )

            for user in users_list:
                print(user.simple_repr())

    def print_users(self):
        if not self.backend.users:
            print("No users found.")
            return

        users_str = "\n".join(
            str(user)
            for user in self.backend.users
        )

        print(users_str)


if __name__ == "__main__":
    app = FrontendManager()
    app.run()
