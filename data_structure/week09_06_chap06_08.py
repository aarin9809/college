# week09_06_chap06_08.py

def is_stack_full() -> bool:
    global SIZE, stack, top
    if top == SIZE-1:
        return True
    else:
        return False


def is_stack_empty() -> bool:
    global SIZE, stack, top
    if top == -1:
        return True
    return False


def push(data):
    global SIZE, stack, top
    if is_stack_full():
        print("스택이 꽉 찼습니다.")
        return
    top += 1
    stack[top] = data


def pop() -> str:
    global SIZE, stack, top
    if is_stack_empty():
        print("스택이 비어있습니다")
        return None
    data = stack[top]
    stack[top] = None
    top = top - 1
    return data


def peek() -> str:
    global SIZE, stack, top
    if is_stack_empty():
        print("스택이 비어있습니다")
        return None
    return stack[top]


SIZE = int(input("스택 사이즈 : "))
stack = [None for _ in range(SIZE)]
top = -1


if __name__ == "__main__":
    while True:
        menu = input("삽입(I)/추출(E)/확인(V)/종료(X) 중 하나를 선택 ==> ")
        if menu == 'I' or menu == 'i':
            data = input("입력할 데이터 ==> ")
            push(data)
            print("스택 상태 : ", stack)
        elif menu == 'E' or menu == 'e':
            data = pop()
            print("추출된 데이터 ==> ", data)
            print("스택 상태 : ", stack)
        elif menu == 'V' or menu == 'v':
            data = peek()
            print("확인된 데이터 ==> ", data)
            print("스택 상태 : ", stack)
        elif menu == 'X' or menu == 'x':
            break
        else:
            print("입력이 잘못됨")
    print("프로그램 종료!")