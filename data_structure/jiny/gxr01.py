# 그래프 객체 생성
class Graph() :
    def __init__(self, size) -> None:
        self.SIZE= size     # 생성자 사용
        self.graph = [[0 for _ in range(size)] for _ in range(size)]

## 전역 변수 선언 부분##
G1, G3 = None, None

G1 = Graph(4)               #G1이라는 4*4 2차원 배열 생성
G1.graph[0][1] = 1; G1.graph[0][2] = 1; G1.graph[0][3] = 1          #a,b;a,c;a,d
G1.graph[1][0] = 1; G1.graph[1][2] = 1                              #b,a;b,c
G1.graph[2][0] = 1; G1.graph[2][1] = 1; G1.graph[2][3] = 1          #c,a;c,b,c,d
G1.graph[3][0] = 1; G1.graph[3][2] = 1                              #d,a;d,c

print('## G1 무방향 그래프 ##')
for row in range(4) :
    for col in range(4) :
        print(G1.graph[row][col], end= ' ')
    print()

G3 = Graph(4)
G3.graph[0][1] = 1; G3.graph[0][2] = 1
G3.graph[3][0] = 1; G3.graph[3][2] = 1

G2 = None
G2 = Graph(4)
G2.graph[0][3] = 1
G2.graph[1][2] = 1; G2.graph[1][3] = 1
G2.graph[2][1] = 1
G2.graph[3][0] = 1; G2.graph[3][1] = 1

print('## G2 graph ##')
for row in range(4) : 
    for col in range(4) :
        print(G2.graph[row][col], end= ' ')
    print()

print('## G3 방향 그래프 ##')
for row in range(4) :
    for col in range(4) :
        print(G3.graph[row][col], end= ' ')
    print()