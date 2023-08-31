#선형 리스트
katok = ['a', 'b', 'c', 'd', 'e']
def insert_data(position, data) :
    if position < 0 or position > len(katok) :
        print("범위 벗어남")
        return

    katok.append(None)
    kLen = len(katok)

    for i in range(kLen-1, position, -1) :
        katok[i] = katok[i-1]
        katok[i-1] = None

    katok[position] = data

def delete_data(position) :
    if position < 0 or position > len(katok) :
        print("범위 벗어남")
        return

    klen = len(katok)
    katok[position] = None      #=
