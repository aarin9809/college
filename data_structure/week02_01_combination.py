def factorial(n):
    """
    팩토리얼 함수
    :param n: 정수 값
    :return: 정수!
    """
    result = 1
    for i in range(2, n+1):
        result = result * i
    return result


def nCr(n, r):
    """
    조합 함수
    :param n: 전체 갯수
    :param r: 선택 갯수
    :return: 경우의 수
    """
    numerator = factorial(n)
    denominator = factorial(n-r) * factorial(r)
    return int(numerator / denominator)


help(nCr)
# total = int(input("n 입력 : "))
# select = int(input("r 입력 : "))
# #print(nCr(total, select))
# print(f'{total}C{select} = {nCr(total, select)}')

# total = input("n, r 입력 : ").split()
# print(f'{total[0]}C{total[1]} = {nCr(int(total[0]), int(total[1]))}')

t, s = input("n, r 입력 : ").split()
print(f'{t}C{s} = {nCr(int(t), int(s))}')
