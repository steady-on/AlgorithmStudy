from functools import reduce

def solution(balls, share):
    if balls == share:
        return 1
    else:
        return reduce(lambda x, y : x * y, range(share+1, balls+1)) / reduce(lambda x, y : x * y, range(1, balls-share+1))

