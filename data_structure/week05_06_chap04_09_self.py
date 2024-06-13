class Node:
    def __init__(self):
        self.data = None
        self.link = None


def print_nodes(start):
    current = start

    if current is None:
        return
    print(current.data, end=' ')
    while current.link is not None:
        current = current.link
        print(current.data, end=' ')
    print()


def make_simple_linked_list(name_height):
    global head, current, pre
    print_nodes(head)

    node = Node()
    node.data = name_height

    if head is None:
        head = node
        return

    if head.data[1] < name_height[1]:
        node.link = head
        head = node
        return

    current = head
    while current.link is not None:
        pre = current
        current = current.link
        if current.data[1] < name_height[1]:
            pre.link = node
            node.link = current
            return

    # 삽입하는 노드가 가장 큰 경우
    current.link = node


head, current, pre = None, None, None
dataArray = [
    ["지민", 180],
    ["정국", 177],
    ["뷔", 183],
    ["슈가", 175],
    ["진", 173]
]


if __name__ == "__main__":
    for data in dataArray:
        make_simple_linked_list(data)

    print_nodes(head)
