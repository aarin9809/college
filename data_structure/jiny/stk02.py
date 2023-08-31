# 스택이 꽉 찼는지 확인하는 함수
def isStackFull() :
    global SIZE, stack, top
    if (top >= SIZE-1) :
        return True
    else :
        return False

SIZE = 5
stack = ['coffee', 'greentea', 'honeywater', 'coke', 'fanta']
top = 4

print("스택이 꽉 찼는지 여부 ==>", isStackFull())