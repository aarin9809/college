SIZE = 5
queue = [None for _ in range(SIZE)]
front = rear = -1

# 큐가 꽉 찼는지 확인하는 함수
# def ifQFull() :
#     global SIZE, queue, front, rear
#     if (rear == SIZE-1) :
#         return True
#     else :
#         return False

# 큐가 꽉 찼는지 확인하는 함수
def isQFull() :
    global SIZE, queue, front, rear
    if (rear != SIZE-1) :       # 꼬리와 큐 사이즈-1이 같지 않다면
        return False            # isQFull is False
    elif (rear == SIZE-1) and (front == -1) :       # 리어와 큐 사이즈-1값이 같고, 머리가 -1 이라면
        return True                                 # isQFull is True
    else :
        for i in range(front+1, SIZE) :             # front+1 값부터 SIZE값 전까지 반복하면서 ex) front = 1 SIZE 5 2부터 5전까지 2,3,4 돔
            queue[i-1] = queue[i]                   # queue[1] = queue[2]   //1번째로 2번째값을 넘기고
            queue[i] = None                         # queue[2] = None       //2번째는 None을 넣으면서 데이터 삭제
        front -= 1                                  # front = front - 1     //front값을 앞으로 한칸
        rear -= 1                                   # rear = rear - 1       //rear값도 앞으로 한칸
        return False
    
SIZE = 5
queue = ["화사","solar", "moon", "whin", "sunmi"]
front = -1
rear = 4

print("큐가 꽉 찼는지 여부", isQFull())


# 큐에 데이터를 삽입하는 함수

def enQueue(data) :
    global SIZE, queue, front, rear
    if (isQFull()) :
        print("Q is full")
        return
    rear += 1
    queue[rear] = data

SIZE = 5

queue = ["hwasa", "solar", "moon", "whiin", "None"]
front = -1
rear += 3

print(queue)
enQueue("sunmi")
print(queue)
enQueue("jaenam")

# 큐가 비었는지 확인하는 함수
def isQueueEmpty() :
    global SIZE, queue, front, rear
    if (front == rear) :
        return True
    else :
        return False
SIZE = 5
queue = [None for _ in range(SIZE)]
front = rear = -1

print("큐가 비었는지 여부 -->", isQueueEmpty())    

#큐에서 front+1 위치의 데이터를 확인하는 함수
def peek() :
    global SIZE, queue, front, rear
    if (isQueueEmpty()) :
        print("큐가 비어있습니다")
        return None
    return queue[front+1]

#함수 선언 부분 ##
def isCQFull() :                        #원형큐가 꽉 차 있는지
    global SIZE, queue, front, rear
    if ((rear+1) % SIZE == front) :
        return True
    else :
        return False

def isCQEmpty() :                       #원형큐가 비어있는지
    global SIZE, queue, front, rear
    if (front == rear) :
        return True
    else :
        return False

def enQueue(data) :                     #원형큐에 데이터 삽입하는 함수
    global SIZE, queue, front, rear
    if (isCQFull()) :
        print("Q is Full")
        return
    rear = (rear + 1) % SIZE
    queue[rear] = data

def deQueue() :                         #원형큐에서 데이터를 뽑아내는 함수
    global SIZE, queue, front, rear
    if (isQueueEmpty()) :
        print("Q is empty")
        return None
    front = (front + 1) % SIZE
    data = queue[front]
    queue[front] = None
    return data

def peek() :                            #원형큐 끝 값 리턴 함수
    global SIZE, queue, front, rear
    if (isQueueEmpty()) :
        print("q is empty")
        return None
    return queue[(front+1) % SIZE]
