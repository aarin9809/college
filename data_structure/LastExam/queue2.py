## 함수 구현 부분 ##

## rear = front  = -1 기억해두기

# 큐가 꽉 찼는지 확인하는 함수
def is_q_full() :
    global SIZE, queue, rear, front
    # if (rear == SIZE -1) :
    #     return True
    # else :
    #     return False

    # full() 개선 버전
    if (rear != SIZE-1) :
        return False
    elif (rear == SIZE-1) and (front == -1) :
        return True
    else:
        for i in range(front +1, SIZE):
            queue[i-1] = queue[i]
            queue[i] = None
        front -= 1
        rear -= 1
        return False

#큐가 비었는지 확인하는 함수
def is_q_empty() :
    global SIZE, queue, rear, front
    if (rear == front) :
        return True
    else :
        return False

#큐에 데이터 넣는 함수
def en_q(data) :
    global SIZE, queue, rear, front
    if (is_q_full()) :
        print("queue is full")
        return
    rear += 1
    queue[front] = None
    return data

#큐에서 데이터 뽑아내는 함수

def dequeue() :
    global SIZE, queue, rear, front
    if (is_q_empty()) :
        print("q is empty")
        return None
    front += 1
    data = queue[front]
    queue[front] = None
    return data

#큐의 front +1 데이터를 확인하는 함수
def peek() :
    global SIZE, queue, rear, front
    if (is_q_empty()) :
        print("q is empty")
        return None
    return queue[front+1]
