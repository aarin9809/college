# week12_03_chap08_05.py

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


delete_name = input("삭제할 아이돌 그룹 입력 : ")

current = root
parent = None
while True:
    if delete_name == current.data:
        if current.left is None and current.right is None:
            if parent.left == current:
                parent.left = None
            else:
                parent.right = None
            del current
        elif current.left is not None and current.right is None:
            if parent.left == current:
                parent.left = current.left
            else:
                parent.right = current.left
            del current
        elif current.left is None and current.right is not None:
            if parent.left == current:
                parent.left = current.right
            else:
                parent.right = current.right
            del current

        print(delete_name, '이(가) 삭제됨.')
        break
    elif delete_name < current.data:
        if current.left is None:
            print(delete_name, '이(가) 트리에 없음')
            break
        parent = current
        current = current.left
    else:
        if current.right is None:
            print(delete_name, '이(가) 트리에 없음')
            break
        parent = current
        current = current.right
