# week12_02_chap08_04.py

class TreeNode:
    def __init__ (self) :
        self.left = None
        self.data = None
        self.right = None


root = None
nameAry = ['블랙핑크', '레드벨벳', '마마무', '에이핑크',  '걸스데이', '트와이스' ]


node = TreeNode()  # root node
node.data = nameAry[0]
root = node


# root 노드 이후 노드들 초기화
for name in nameAry[1:]:  # 1번 원소부터 끝까지 (레벨~트와이스)
    node = TreeNode()
    node.data = name

    current = root
    while True:
        if name < current.data:
            if current.left is None:
                current.left = node
                break
            current = current.left
        else:
            if current.right is None:
                current.right = node
                break
            current = current.right


findName = input("찾는 아이돌 그룹 입력 : ")

current = root
while True:
    if findName == current.data:
        print(findName, '을(를) 찾음.')
        break
    elif findName < current.data:
        if current.left is None:
            print(findName, '이(가) 트리에 없음')
            break
        current = current.left
    else :
        if current.right is None:
            print(findName, '이(가) 트리에 없음')
            break
        current = current.right
