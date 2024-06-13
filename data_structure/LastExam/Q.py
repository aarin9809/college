def isQFull() :                             #큐가 꽉 찼는지 확인하는 함수
    global SIZE, queue, front, rear
    if (rear == SIZE-1) :
        return True
    else :
        return False

def isQEmpty() :                            #큐가 비어있는지 확인하는 함수
    global SIZE, queue, front, rear
    if (front == rear) :
        return True
    else:
        return False

def enQueue(data) :                         #큐에 데이터를 삽입하는 함수
    global SIZE, queue, front, rear
    if (isQFull()) :
        print("Q is full")
        return
    rear += 1
    queue[rear] = data

def deQueue() :                             #큐에서 데이터를 추출하는 함수
    global SIZE, queue, front, rear
    if (isQEmpty()) :
        print("Q is empty")
        return None
    front += 1
    data = queue[front]
    queue[front] = None
    return data

def peek() :                                #큐에서 front + 1 위치의 데이터를 확인하는 함수
    global SIZE, queue, front, rear
    if (isQEmpty()) :
        print("Q is empty")
        return None
    return queue[front+1]