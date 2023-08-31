# week04_02_chap03_05_self
# print_poly 함수를 수정하자.
# 1) 계수가 0인 항은 출력되지 않도록 하자.
# 2) 그리고 첫 번째 항에 플러스 부호도 출력되지 않도록 하자
# F(x) = +1x^4 +3x^3 +0x^2 -7x^1 +5x^0
# F(x) = 1x^4 +3x^3 -7x^1 +5x^0

def print_poly(f_x):
    """
    다항식 출력 함수
    :param f_x: 계수(정수)가 원소로 들어있는 리스트
    :return: 다항식 문자열
    """
    term = len(f_x) - 1
    poly_str = "F(x) = "

    for i in range(len(f_x)):
        coef = f_x[i]

        if coef == 0:
            term = term - 1
            continue
        elif coef > 0 and i != 0:  # + 기호가 붙는 조건, 계수가 0보다 커야하고 동시에 i는 0이 아니어야 함
            poly_str = poly_str + "+"
        poly_str = poly_str + f"{coef}x^{term} "
        term = term - 1

    return poly_str


def calc_poly(x_value, f_x):
    """
    다항식 실 연산 함수
    :param x_value: 독립변수 x, 정수
    :param f_x: 계수(정수)가 원소로 들어있는 리스트
    :return: 다항식 산술 연산 결과 값
    """
    ret_value = 0
    term = len(f_x) - 1

    for i in range(len(f_x)):
        coef = f_x[i]
        ret_value = ret_value + coef * (x_value ** term)
        term = term - 1

    return ret_value


#fx = [7, -4, 0, 5]  # F(x) = +7x^3 -4x^2 +0x^1 +5x^0
fx = [1, 3, 0, -7, 5]  # F(x) = +1x^4 +3x^3 +0x^2 -7x^1 +5x^0
# F(x) = 1x^4 +3x^3 -7x^1 +5x^0

if __name__ == "__main__":
    # help(print_poly)
    # help(abs)
    print(print_poly(fx))

    x = int(input("x 값 : "))
    print(calc_poly(x, fx))
