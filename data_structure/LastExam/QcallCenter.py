#함수 구현

def isQFull() :
    global SIZE, queue, rear, front
    if ((rear +1) % SIZE == front) :
        return True
    else:
        return False

def isQMty() :
    global SIZE, queue, rear, front
    if (front == rear) :
        return True
    else :
        return False

def enQ(data) :
    global SIZE, queue, rear, front
    if (isQFull()) :
        print("Q is full")
        return
    rear = (rear + 1) % SIZE
    queue[rear] = data

def deQ() :
    global SIZE, queue, rear, front
    if (isQMty()) :
        print("Q is empty")
        return None
    front = (front + 1) % SIZE
    data = queue[front]
    queue[front] = None
    return data

def peek() :
    if (isQMty()) :
        print("Q is empty")
        return None
    return queue[(front + 1) % SIZE]

def calctime() :
    global SIZE, queue, rear, front
    timesum = 0
    for i in range((front + 1) % SIZE, (rear + 1) % SIZE) :
        timesum += queue[i][1]
        return timesum

## 전역 변수 선언 부분 ##
SIZE = 6
queue = [None for _ in range(SIZE)]
front = rear = 0

## main code ##
if __name__ == "__main__" :
    waitCall = [('사용',9), ('고장', 3), ('환불', 4), ('환불', 4), ('고장', 3)]

    for call in waitCall :
        print("귀하의 대기 시간은 : ", calctime(), "분입니다.")
        print("현재 대기 콜 -->", queue)
        enQ(call)
        print()

    print("최종 대기 콜 --> " ,queue)
    print("프로그램 종료")