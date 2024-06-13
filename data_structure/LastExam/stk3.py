if __name__ == "__main__" :
    stack = []
    
def push(stack, X) :
    stack.append(X)

def pop(stack, X) :
    if empty(stack) :
        return None
    X = top(stack)
    stack.pop()
    return X

def empty(stack) :
    if (len(stack) == 0) :
        return 1
    else :
        return 0

def size(stack) :
    return len(stack)

def top(stack) :
    if empty(stack) :
        return None
    top = stack[-1]
    return stack[top]

