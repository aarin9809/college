class Node:
    def __init__(self):
        self.data = None
        self.link = None


node1 = Node()
node1.data = "다현"

node2 = Node()
node2.data = "정연"
node1.link = node2

node3 = Node()
node3.data = "쯔위"
node2.link = node3

node4 = Node()
node4.data = "사나"
node3.link = node4

node5 = Node()
node5.data = "지효"
node4.link = node5

node6 = Node()
node6.data = "솔라"
node5.link = node6

# 삽입
# new_node = Node()
# new_node.data = "문별"
# new_node.link = node2.link  # 정연이 가지고 있는 링크(쯔위 노드)를 문별 노드 링크에게 전달
# node2.link = new_node

# 삭제
node2.link = node3.link
del node3

current = node1
print(current.data, end=' ')
#while current.link != None:
while current.link is not None:  # PEP8
    current = current.link  # 다음 노드로 이동
    print(current.data, end=' ')


# print(node1.data, end = ' ')
# print(node1.link.data, end = ' ')
# print(node1.link.link.data, end = ' ')
# print(node1.link.link.link.data, end = ' ')
# print(node1.link.link.link.link.data, end = ' ')

# print(node1.data, end = ' ')
# print(node5.data, end = ' ')
# print(node4.link.data, end = ' ')
# print(node3.link.link.data, end = ' ')
# print(node2.link.link.link.data, end = ' ')
# print(node1.link.link.link.link.data, end = ' ')
