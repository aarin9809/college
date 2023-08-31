# week06_03_chap05_08_self.py
import random


class Node:
    def __init__(self):
        self.data = None
        self.link = None


def print_nodes(start) -> None:
    """
    원형 연결 리스트 출력 함수
    :param start: 시작 노드
    :return: None
    """
    current = start

    if current is None:
        return
    print(current.data, end=' ')
    while current.link is not start:  # !
        current = current.link
        print(current.data, end=' ')
    print()


def make_plus_minus() -> tuple:
    """
    음수는 양수로 양수는 음수로 토글 시키는 함수
    :return: 리스트의 양수, 0, 음수 갯수를 튜플로 리턴
    """
    plus = 0
    zero = 0
    minus = 0
    current = head
    while True:
        if current.data > 0:
            plus = plus + 1
        elif current.data < 0:
            minus = minus + 1
        else:
            zero = zero + 1

        current.data = current.data * -1
        if current.link is head:
            break
        current = current.link

    return plus, zero, minus


head, current, pre = None, None, None
data_array = [random.randint(-5, 5) for _ in range(7)]  # list comprehension
# print(data_array)

if __name__ == "__main__":
    node = Node()
    node.data = data_array[0]
    node.link = node  # !
    head = node

    for i in range(1, len(data_array)):
        pre = node
        node = Node()
        node.data = data_array[i]
        pre.link = node
        node.link = head  # !

    print_nodes(head)
    p, z, m = make_plus_minus()
    print(f"양수 : {p}, 0 : {z}, 음수 : {m}")
    print_nodes(head)
