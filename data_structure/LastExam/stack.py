## 함수 선언 부분 ##

# top은 항상 -1에서부터 시작한다(기억해두기)

# 스택이 꽉 찼는지 확인 하는 함수
def is_stack_full() :
    global SIZE, stack, top
    if (top >= SIZE-1) :
        return True
    else :
        return False

# 스택이 비어있는지 확인하는 함수
def is_stack_empty() :
    global SIZE, stack, top
    if (top == -1) :
        return True
    else :
        return False

# 스택에 데이터를 집어넣는 함수 (push)
def push(data) :
    global SIZE, stack, top
    if(is_stack_full()) :
        print("stack is full")
        return
    top += 1
    stack[top] = data

#스택에서 데이터를 뽑아내는 함수
def pop() :
    if(is_stack_empty()) :
        print("empty")
        return None
    data = stack[top]
    stack[top] = None
    top -= 1
    return data

#스택의 stack[top] 위치의 데이터를 리턴하는 함수
def peek() :
    if (is_stack_empty()) :
        print("stack is emtpy")
        return None
    return stack[top]