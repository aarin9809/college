#원형 큐

## 함수 선언

def is_q_full() :
    global SIZE, queue, rear, front
    if ((rear+1) % SIZE == front) :
        return True
    else :
        return False

def is_q_empty() :
    global SIZE, queue, rear, front
    if(front == rear) :
        return True
    else :
        return False

def enQ(data) :
    global SIZE, queue, rear, front
    if (is_q_full()) :
        print("q is full")
        return
    rear = (rear + 1) % SIZE
    queue[rear] = data

def deQ() :
    global SIZE, queue, rear, front
    if (is_q_empty()) :
        print("q is emtpy")
        return None
    front = (front +1) % SIZE
    data = queue[front]
    queue[front] = None
    return data

def peek() :
    global SIZE, queue, rear, front
    if (is_q_empty()) :
        print("q is empty")
        return None
    return queue[(front+1) % SIZE]