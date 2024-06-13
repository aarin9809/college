
## 함수 선언 부분 ##
class Graph() :
	def __init__ (self, size) :
		self.SIZE = size
		self.graph = [[0 for _ in range(size)] for _ in range(size)]

def print_graph(g) :
	print('  ', end = ' ')
	for v in range(g.SIZE) :
		print(name_ary[v], end = '  ')
	print()
	for row in range(g.SIZE) :
		print(name_ary[row], end = ' ')
		for col in range(g.SIZE) :
			print(g.graph[row][col], end= '   ')
		print()
	print()


## 전역 변수 선언 부분 ##
G1 = None
name_ary = ['moon', 'solar', 'whiin', 'zzwi', 'sunmi', 'hwasa']
moon, solar, whiin, zzwi, sunmi, hwasa = 0, 1, 2, 3, 4, 5


## 메인 코드 부분 ##
gSize = 6
G1 = Graph(gSize)
G1.graph[moon][solar] = 1; G1.graph[moon][whiin] = 1
G1.graph[solar][moon] = 1; G1.graph[solar][zzwi] = 1
G1.graph[whiin][moon] = 1; G1.graph[whiin][zzwi] = 1
G1.graph[zzwi][solar] = 1; G1.graph[zzwi][whiin] = 1; G1.graph[zzwi][sunmi] = 1; G1.graph[zzwi][hwasa] = 1
G1.graph[sunmi][zzwi] = 1; G1.graph[sunmi][hwasa] = 1
G1.graph[hwasa][zzwi] = 1; G1.graph[hwasa][sunmi] = 1

print('## G1 무방향 그래프 ##')
print_graph(G1)
