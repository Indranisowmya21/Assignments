A=list(map(int,input().split()))
t=int(input())
m=[]
for i in range(len(A)):
    for j in range(len(A)):
        if(A[i]+A[j]==t):
            if(i not in m):
                m.append(i)
                if(j not in m):
                    m.append(j)
 print(m)
