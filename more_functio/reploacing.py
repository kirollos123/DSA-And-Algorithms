class employee:
    def __init__(self, name):
        self.name = name

    def print(self):
        print(self.name)


def hack():
    print('hey!')


if __name__ == '__main__':
    emp = employee('kirollos')

    emp.print()
    emp.print = hack
    emp.print()
