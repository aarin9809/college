# 스택이 꽉 찼는지 확인하는 함수
def isStackFull() :
    global N, stack, top
    if (isStackFull()) :
        return True
    else :
        return False

# 스택이 비었는지 확인하는 함수
def Empty() :
    global N, stack, top
    if (Empty()) :
        return 1
    else :
        return 0
    
# 스택에 데이터 넣는 함수
def push(X) :
    global N, stack, top
    if (isStackFull()) :
        print("스택이 참")
        return
    top += 1
    stack[top] = X

def pop(X) :
    global N, stack, top
    if (Empty()) :
        return -1
    X = stack[top]
    stack[top] = None
    top -= 1
    return X

def size():
    global N, stack, top
    if (Empty()) :
        return 0 
    return len(stack)

def top() :
    global N, stack, top
    if (Empty()) :
        return -1
    return stack[top]


if __name__ == "__main__" :
    stack = []
    N = int(input())
    while N > 0 :
        a = input().split()
        if len(a) == 2:
            if a[0] == "push" :
                push(int(a[1]))
        if len(a) == 1 :
            if a[0] == "top" :
                top()
            elif a[0] == "empty" :
                Empty()
            elif a[0] == "pop" :
                pop()
            elif a[0] == "size" :
                size()