def isStackFull() :             #스택이 꽉 찼는지 확인하는 함수
    global SIZE, stack, top
    if (top >= SIZE - 1) :      # top이 전체 길이 -1 보다 이상일 때
        return True
    else :
        return False

def isStackEmpty() :            #스택이 비었는지 확인하는 함수
    global SIZE, stack, top
    if (top == -1) :
        return True
    else:
        return False

def push(data) :                #스택에 데이터 넣는 함수
    global SIZE, stack, top
    if(isStackFull()) :
        print("stack is full")
        return
    top += 1
    stack[top] = data

def pop() :                     #스택에서 데이터를 추출하는 함수
    global SIZE, stack, top
    if (isStackEmpty()) :
        print("stack is empty")
        return None
    data = stack[top]
    stack[top] = None
    top -= 1
    return data

def peek() :                    #스택의 top위치의 데이터를 확인하는 함수
    global SIZE, stack, top
    if (isStackEmpty()) :
        print("스택이 비었다.")
        return None
    return stack[top]