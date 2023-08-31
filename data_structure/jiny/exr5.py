# 이진 탐색 트리의 삭제 작동
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

#==================================================================================================#
# 반복문을 돌릴고 고려해 봐야 할 점
"""
1. 삭제 할 데이터가 루트 데이터값과 일치하는지
1-1. 루트의 왼쪽 데이터가 비어있고, 오른쪽 데이터도 비어있다면
1-2. 부모 노드의 왼쪽이 현재 값과 같다면
1-2-1. 부모 노드의 왼쪽은 
"""
delete_name = input()

current = root
parent = None               # 왜 삭제할 노드의 상위 변수를 None 값으로????????

while True :
    # 삭제 할 데이터와 현재 위치의 데이터가 일치 할 때
    if delete_name == current.data :
        # root의 왼쪽, 오른쪽 둘 다 None 일때
        if current.left == None and current.right == None :
            if parent.left == current :
                parent.left = None
            else :
                parent.right = None
            del(current)

        # 왼쪽만 None이 아닐 때
        elif current.left is not None and current.right == None :
            if parent.left == current :
                parent.left = current.left
            else :
                parent.right = current.left
            del(current) 

        # 오른쪽만 None이 아닐 때
        elif current.left == None and current.right is not None :
            if parent.left == current :
                parent.left = current.right
            else :
                parent.right = current.right
            del(current)
        print(delete_name, '이(가) 삭제됨.')
        break

    # 삭제할 데이터가 현재 데이터보다 값이 작을 때
    elif delete_name < current.data :
        if current.left == None :
            print(delete_name, '이(가) 트리에 없음')
            break
        parent = current
        current = current.left

    # 삭제할 데이터가 현재 데이터보다 값이 클 때
    else :
        if current.right == None:
            print(delete_name, '이(가) 트리에 없음.')
            break
        parent = current
        current = current.right
