# week06_02_chap05_08.py
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


def count_odd_even() -> tuple:
    """
    각 노드의 데이터가 홀수, 짝수 여부에 따라 홀짝 카운터 증가 처리 함수
    :return: 홀짝 개수를 튜플로 리턴
    """
    global head, current, pre

    odd, even = 0, 0
    if head is None:
        return False

    current = head
    while True:
        if current.data % 2 == 0:
            even = even + 1
        else:
            odd = odd + 1
        if current.link is head:
            break
        current = current.link

    return odd, even


def make_minus_number(odd, even) -> None:
    """
    홀짝 개수 중 많은 쪽의 데이터를 음수 처리하는 함수
    :param odd: 홀수 갯수
    :param even: 짝수 갯수
    :return: None
    """
    if odd > even:
        remainder = 1
    else:
        remainder = 0

    current = head
    while True:
        if current.data % 2 == remainder:
            current.data *= -1
        if current.link is head:
            break
        current = current.link


head, current, pre = None, None, None
data_array = [random.randint(1, 100) for _ in range(7)]  # list comprehension
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

    odd_cnt, even_cnt = count_odd_even()
    print(f'홀수 {odd_cnt}, 짝수 {even_cnt}')

    make_minus_number(odd_cnt, even_cnt)
    print_nodes(head)
