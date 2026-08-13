from input_utils import input_valid_int
from backend_manager import BackendManager


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
