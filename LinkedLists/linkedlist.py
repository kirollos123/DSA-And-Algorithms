class node:
    def __init__(self, data):
        self.data = data
        self.next = None


head = node(100)
secound = node(200)
third = node(300)
fourth = node(400)
fifth = node(500)
head.next = secound
secound.next = third
third.next = fourth
fourth.next = fifth  
print (head.next.data)
current = head
while current is not None:
    print (current.data)
    current = current.next