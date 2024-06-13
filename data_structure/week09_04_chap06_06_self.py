# week09_04_chap06_06_self.py

# SRP 위배
def pop() -> str:
    global SIZE, stack, top
    if top == -1:  # is_stack_empty()
        print("스택이 비어있습니다")
        return None
    data = stack[top]
    stack[top] = None
    top = top - 1
    return data


SIZE = 5
stack = ["커피", None, None, None, None]
top = 0

print(stack)
print(pop())
print(stack)
print(pop())
