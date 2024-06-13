# week11_02_fibonacci.py

def fibonacci_recursion(n):
    """
    피보나치 함수 (재귀)
    :param n: 정수 값
    :return: 피보나치 값
    """
    if n <= 1:
        return n
    else:
        return fibonacci_recursion(n-1) + fibonacci_recursion(n-2)


if __name__ == "__main__":
    number = int(input("정수 입력 : "))
    print(fibonacci_recursion(number))

