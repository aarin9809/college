class Node:
    def __init__(self):
        self.data = None
        self.link = None


def print_nodes(start):
    current = start
    #if current == None :
    if current is None:
        return
    print(current.data, end=' ')
    while current.link is not None:
        current = current.link
        print(current.data, end=' ')
    print()


head, current, pre = None, None, None
#data_array = ["다현", "정연", "쯔위", "사나", "지효", "솔라"]
data_array = ["백현", "첸"]

if __name__ == "__main__":
    node = Node()
    node.data = data_array[0]
    head = node

    for i in range(1, len(data_array)):
        pre = node
        node = Node()
        node.data = data_array[i]
        pre.link = node

    print_nodes(head)
