# 스택이 꽉 찼는지 확인하는 함수
def isStackFull() :
    global SIZE, stack, top

    if (isStackFull()) :
        return True
    else :
        return False

# 스택이 비어있는지 확인하는 함수
def isStackEmpty() :
    global SIZE, stack, top

    if (isStackEmpty()) :
        return True
    else :
        return False

# 스택에 데이터 삽입하는 함수
def push(data) :
    global SIZE, stack, top
    if (isStackFull == True) :
        print("스택 꽉 참.")
        return
    top += 1
    stack[top] = data

# 스택에서 데이터를 뽑아내는 함수
def pop(data) :
    global SIZE, stack, top

    if (isStackEmpty == True) :
        print("스택이 비어있음.")
        return None
    data = stack[top]
    stack[top] = None
    top -= 1
    return data

# 스택에서 top값을 리턴하는 함수
def peek() :
    if (isStackEmpty == True) :
        print("stack is empty")
        return None

    return stack[top]