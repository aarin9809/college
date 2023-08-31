# week11_01_factorial.py

def factorial_repetition(n):
    """
    팩토리얼 함수 (반복문)
    :param n: 정수 값
    :return: 정수!
    """
    result = 1
    for i in range(2, n+1):
        result = result * i
    return result


def factorial_recursion(n):
    """
    팩토리얼 함수 (재귀)
    :param n: 정수 값
    :return: 정수!
    """
    if n == 1:
        return 1
    else:
        return n * factorial_recursion(n-1)


if __name__ == "__main__":
    number = int(input("정수 입력 : "))
    print(factorial_recursion(number))
    print(factorial_repetition(number))
