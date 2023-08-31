#이진트리 삽입 작동

#왼쪽 서브 트리는 루트노드 보다 작은 값을 가진다.
#오른쪽 서브 트리는 루트 노드보다 큰 값을 가진다.
#모든 노드 값은 중복되지 않고, 중복된 값은 이진 탐색 트리에 저장할 수 없다.

#1. root를 None으로 초기화 시킨다.
#2. 데이터 배열 생성.
#3. 노드 생성하고 배열[0]번째 데이터를 node.data로 지정하고 root를 node로 지정하고 생성한 노드를 메모리에 저장.
#4. 두번째 데이터, 노드 생성하고새 노드에 데이터 입력하고 현재 위치를 root노드로 지정
#5. 작으면 새 노드를 왼쪽 링크로 연결, 크면 오른쪽 링크에 연결. 그리고 새 노드를 메모리 배열에 저장.

# 대충 이런 흐름으로 이어진다.

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

print("이진 탐색 트리 구성 완료!")