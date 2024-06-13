#week10_chap07_08&09.py

def is_queue_full():
	global SIZE, queue, front, rear
	if (rear+1) % SIZE == front:  # !
		return True
	else:
		return False


def is_queue_empty():
	global SIZE, queue, front, rear
	if front == rear:
		return True
	else:
		return False


def enQueue(data):
	global SIZE, queue, front, rear
	if is_queue_full():
		print("큐가 꽉 찼습니다.")
		return
	rear = (rear+1) % SIZE  # !
	queue[rear] = data


def deQueue():
	global SIZE, queue, front, rear
	if is_queue_empty():
		print("큐가 비었습니다.")
		return None
	front = (front+1) % SIZE  # !
	data = queue[front]
	queue[front] = None
	return data


def peek():
	global SIZE, queue, front, rear
	if is_queue_empty():
		print("큐가 비었습니다.")
		return None
	return queue[(front+1) % SIZE]  # !


SIZE = int(input("큐의 크기를 입력하세요 ==> "))
queue = [None for _ in range(SIZE)]
front = rear = 0  # !


if __name__ == "__main__":
	while True:
		menu = input("삽입(I)/추출(E)/확인(V)/종료(X) 중 하나를 선택 ==> ")
		if menu == 'I' or menu == 'i':
			data = input("입력할 데이터 ==> ")
			enQueue(data)
			print("큐 상태 : ", queue)
		elif menu == 'E' or menu == 'e':
			data = deQueue()
			print("추출된 데이터 ==> ", data)
			print("큐 상태 : ", queue)
		elif menu == 'V' or menu == 'v':
			data = peek()
			print("확인된 데이터 ==> ", data)
			print("큐 상태 : ", queue)
		elif menu == 'X' or menu == 'x':
			break
		else:
			print("입력이 잘못됨")
	print("프로그램 종료!")
