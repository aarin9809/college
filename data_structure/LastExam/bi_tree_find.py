class TreeNode() :
    def __init__(self):
        self.left = None
        self.right = None
        self.data = None

# 전역변수 부분
memory = []         # memory 리스트 생성
root = None         # root를 None으로 지정
nameAry = ['bp', 'rb', 'mm', 'ap', 'gd', 'tw']

## main code ##

node = TreeNode()       # 신규 node 생성
node.data = nameAry[0]      # nameAry 0번째를 node.data로 지정
root = node                 # 새로 생성한 node를 root로 지정
memory.append(node)         # memory 리스트에 node를 추가

for name in nameAry[1:] :       # nameAry 2번째부터 끝까지 name으로 돌면서
    node = TreeNode()           # 신규 node 생성
    node.data = name            # for 문으로 돌면서 받은 name 값을 node.data에 대입함

    current = root              # root를 현재 위치인 current로 지정
    while True :                # 무한 반복문 열고
        if name < current.data :            # 만약 이름의 데이터가 현재위치의 데이터보다 값이 작을 경우
            if current.left == None :       # 현재위치의 왼쪽값이 없을 경우
                current.left = node         # node값을 현재위치의 왼쪽으로 보냄
                break
            current = current.left          # 현재위치의 왼쪽을 현재위치로 옮김..
        else :
            if current.right == None :      # 위 과정을 오른쪽으로 틀었을 때 if문
                current.right = node
                break
            current = current.right

    memory.append(node)                     # memory 리스트에 node 값을 추가

find_name = "mm"

current = root
while True :
    if find_name == current.data :
        print(find_name, '을(를) 찾음')
        break
    elif find_name < current.data :
        if current.left == None :
            print(find_name, 'is not in tree')
            break
        current = current.left
    else :
        if current.right == None :
            print(find_name,'is not in tree')
            break
        current = current.right