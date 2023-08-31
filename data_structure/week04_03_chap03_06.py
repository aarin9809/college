# week04_03_chap03_06

def print_poly(t_x, f_x):
    """
    다항식 출력 함수
    :param t_x: 지수(정수)가 원소로 들어있는 리스트
    :param f_x: 계수(정수)가 원소로 들어있는 리스트
    :return: 다항식 문자열
    """
    poly_str = "F(x) = "

    for i in range(len(f_x)):
        term = t_x[i]
        coef = f_x[i]

        if coef >= 0:
            poly_str += "+"
        poly_str = poly_str + f"{coef}x^{term} "

    return poly_str


def calc_poly(x_value, t_x, f_x):
    """
    다항식 산술 연산 함수
    :param x_value: 독립변수 x, 정수
    :param t_x: 지수(정수)가 원소로 들어있는 리스트
    :param f_x: 계수(정수)가 원소로 들어있는 리스트
    :return: 다항식 산술 연산 결과 값
    """
    ret_value = 0

    for i in range(len(f_x)):
        coef = f_x[i]
        term = t_x[i]
        ret_value = ret_value + coef * (x_value ** term)

    return ret_value


# F(x) = +1x^40 -7x^10 +5x^0
tx = [40, 10, 0]
fx = [1, -7, 5]

if __name__ == "__main__":
    print(print_poly(tx, fx))

    x = int(input("x값 : "))
    print(calc_poly(x, tx, fx))
