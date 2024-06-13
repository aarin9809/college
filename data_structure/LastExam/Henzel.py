import random

## 함수 선언 부분 ##

def is_stack_full() :
    global SZIE, stack, top
    if (top >= SIZE-1) :
        return True
    else :
        return False

def is_stack_empty() :
    global SIZE, stack, top
    if(top == -1) :
        return True
    else :
        return False

def push(data) :
    global SIZE, stack, top
    if (is_stack_full()) :
        print("stack is full")
        return None
    top += 1
    stack[top] = data

def pop() :
    global SIZE, stack, top
    if (is_stack_empty()) :
        print("stack is empty")
        return None
    data = stack[top]
    stack[top] = None
    top -= 1
    return data

def peek() :
    global SIZE, stack, top
    if (is_stack_empty()) :
        return None
    return stack[top]

SIZE = 10
stack = [None for _ in range(SIZE)]
top  = -1

if __name__ == "__main__" :

    stoneAry = ["red", "blue", "green", "purple", "orange", "black"]
    random.shuffle(stoneAry)

    print("go to snacktown : ", end=' ')
    for stone in stoneAry :
        push(stone)
        print(stone, "-->", end=' ')
    print("과자집")

    print("go to home : ", end=' ')
    while True :
        stone = pop()
        if stone == None :
            break
        print(stone, "-->", end=' ')
    print("our Home")