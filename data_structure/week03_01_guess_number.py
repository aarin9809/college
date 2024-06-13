# week03_01_guess_number
import random

chance = 10
answer = random.randrange(1, 1001)
#print(answer)

while True:
    guess = int(input("정수 입력 : "))
    if answer == guess:
        print("빙고 정답입니다!")
        break
    elif answer > guess:
        print("입력한 수가 정답 보다 작아요")
        chance = chance - 1
        if chance == 0:
            print(f"당신이 졌습니다. 정답은 {answer}입니다")
            break
        print(f"남은 기회는 {chance}번 입니다")
    elif answer < guess:
        print("입력한 수가 정답 보다 커요")
        chance = chance - 1
        if chance == 0:
            print(f"당신이 졌습니다. 정답은 {answer}입니다")
            break
        print(f"남은 기회는 {chance}번 입니다")


