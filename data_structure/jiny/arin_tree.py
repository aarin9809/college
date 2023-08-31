class TreeNode:
    def __init__ (self) :
        self.left = None
        self.data = None
        self.right = None

    # @return: None
    # insert 구현
    def insert(self, data):                         # None을 만나면 새로운 노드 삽입 
        new_node = TreeNode()                       # TreeNode의 new_node 객체 생성
        cur_node = self.root                        # root에 cur_node 객체 대입


        while cur_node is not None:                 #cur_node가 None이 아닐 때까지 돌면서
            if new_node.data < cur_node.data :      # 새 삽입 데이터가 현재 노드의 데이터보다 작을 때,
                cur_node = cur_node.left            # 현재위치 -> 현재왼쪽 자식으로 현위치 이동
            else:
                cur_node = cur_node.right
            
            """
            만약 new_node.data < cur_node.data 일 때 왼쪽 자식노드로 이동
            만약 new_node.data >= cur_node.data 일 때 오른쪽 자식노드로 이동
            
            만약 cur_node가 None을 만나면 
            """

        cur_node = new_node


    # if found, return true,
    # if not found, return false  
    # @return: bool 
    # 검색 기능
    def find(self) :
        find_name = input()
        

        current = self.root

        while True :
            if find_name == current.data :
                print(find_name,'을(를) 찾음')
                break
            elif find_name < current.data :
                if current.left == None:
                    print('없음')
                    break
                current = current.left
            else:
                if current.right == None:
                    print('없음')
                    break
                current = current.right
            

        



    # @return: None
    # remove 구현
    def delete(self, data):
        node = TreeNode()               # 노드 객체 생성
        
        # 말단 노드일떄
        # 지우고 none
        # 자식이 하나일 떄
        # 자식으로 대체하고 현재노드 삭제 
        # 자식이 둘일 때
        # 1. 왼쪽 자식의 가장 큰(오른쪽 끝)으로 교체
        # 2. 오른쪽 자식의 가장 작은(왼쪽 끝)으로 교체
        # 1 or 2 선택  

            

# root -> left -> right
def preorder(tree):             #전위
    # TODO: Implmement preorder tree
    None

# left -> root -> right
def inorder(tree):              #중위
    # TODO: Implmement inorder tree
    None

# left -> right -> root
def postorder(tree):            #후위
    # TODO: Implmement postorder tree
    None


# https://hongku.tistory.com/160
'''
t = Tree()
for i in range(1, 16):
    t.insert(i)

preorder(t)
# printed result
# 1 2 4 8 9 5 10 11 3 6 12 13 7 14 15

inorder(t)
# printed result
# 8 4 9 2 10 5 11 1 12 6 13 3 14 7 15

postorder(t)
# printed result
# 8 9 4 10 11 5 2 12 13 6 14 15 7 3 1
'''