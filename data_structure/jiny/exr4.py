#이진 탐색 트리의 검색 작동

class TreeNode() :
    def __init__(self) :
        self.data = None
        self.right = None
        self.left = None

# 전역 변수 선언 부분
memory = []
root = None
nameAry = ['blackpink', 'redvelvet', 'mamamoo', 'Apink', 'girlsday', 'twice']

#메인 코드 부분
node = TreeNode()                   #새 노드 생성
node.data = nameAry[0]              # node.data에 배열 0번째 데이터 대입
root = node                         # root에 node값을 대입
memory.append(node)                 # memory 배열에 node값을 추가.

for name in nameAry[1:] :           # nameAry 2번째부터 돌면서

    node = TreeNode()               # 새 노드 생성
    node.data = name                # name에 들어가는 이름을 node.data에 대입

    current = root                  # root를 현재 위치로 만듬

    while True :
        if name < current.data :    # 만약 이름값이 현재 데이터보다 (root)보다 작으면
            if current.left == None :       # 현재의(root) 왼쪽값이 None이라면
                current.left = node         # 현재의(root) 왼쪽값에 node값을 대입
                break
            current = current.left          # 현재 위치를 현재위치였던곳의 왼쪽으로 이동 시킴.
        else :
            if current.right == None :      # 현재 위치의 오른쪽이 비어있다면,
                current.right = node        # 현재 위치의 오른쪽에 노드값 대입
                break
            current = current.right         # 현재 위치를 현재위치였던 곳에서 오른쪽으로 옮김
    memory.append(node)                     # memory 배열에 node값을 추가함.

#=========================================================================================================================#

find_name = input()                         # 입력값을 변수에 대입함.

current = root                              # root를 현재 위치로 지정

while True:
    if find_name == current.data :          # 만약 입력값이 현재의(root) 데이터와 같다면
        print(find_name, '을(를) 찾음.')
        break
    elif find_name < current.data :         # 입력값이 root데이터보다 작다면,
        if current.left == None :               # root의 왼쪽 데이터가 없다면,
            print(find_name, '이(가) 트리에 없음.')
            break
        current = current.left                  # 현재위치를 현재였던 위치의 왼쪽으로 옮김
    else :
        if current.right == None :              # root의 오른쪽값이 없다면,
            print(find_name, '이(가) 트리에 없음.')
            break
        current = current.right                 # 현재위치를 현재였던 위치의 오른쪽으로 옮김.