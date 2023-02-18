def solution(N):
    s=0
    for i in range(0,N//2):
        if(N%(2**i)==0):
            s=i
    return s
N=int(input())
print(solution(N))