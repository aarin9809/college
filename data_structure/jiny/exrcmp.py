class TreeNode() :
    def __init__(self) :
        self.data = None
        self.right = None
        self.left = None

# 전역변수 선언 부분
memory = []
root = None
nameAry = ['redvelvet', 'blackpink', 'mamamoo', 'Apink', 'girlsday', 'twice']

# main code part
node = TreeNode()            # create new node
node.data = nameAry[0]
root = node
memory.append(node)

for name in nameAry[1:] :
    
    node = TreeNode()
    node.data = name

    current = root          # root를 current로 고정

    while True :
        if name < current.data :
            if current.left == None :
                current.left = node
                break
            current = current.left
        else :
            if current.right == None :
                current.right = node
                break
            current = current.right
    memory.append(node)

#===========================================================#

current = node
parent = None

del_data = input()
# 삭제할 데이터와 현재 위치의 데이터가 일치할 때
while True:
    if del_data == current.data :
        if current.left == None and current.right == None :
            if parent.left == current :
                parent.left = None
            elif parent.right == current :
                parent.right = None
            del(current)


        elif current.left == None and current.right is not None :
            if parent.left is current :
                parent.left = current.right
            elif parent.right is current :
                parent.right = current.right
            del(current)

        elif current.right == None and current.left is not None :
            if parent.left == current :
                parent.left = current.left
            elif parent.right == current :
                parent.right = current.left
            del(current)

        elif del_data < current.data :
            if current.left is None :
                print("없음")
                break
            current = current.left
            parent = current
        
        else :
            if current.right is None :
                print("없음")
                break
            current = current.right
            parent = current