def generateString(A, B):

    rt = ""
    while (0 < A or 0 < B) :

        # More 'b', append "bba"
        if (A < B) :
            if (0 < B):
                rt = rt +'b'
                B -= 1
            if (0 < B):
                rt += 'b'
                B -= 1
            if (0 < A):
                rt += 'a'
                A -= 1

        # More 'a', append "aab"
        elif (B < A):
            if (0 < A):
                rt += 'a'
                A -= 1
            if (0 < A):
                rt += 'a'
                A -= 1
            if (0 < B):
                rt += 'b'
                B -= 1

        # Equal number of 'a' and 'b'
        # append "ab"
        else :
            if (0 < A):
                rt += 'a'
                A -= 1
            if (0 < B):
                rt += 'b'
                B -= 1
    print(rt)

# Driver code
if __name__ == "__main__":

    A = 2
    B = 6
    generateString(A, B)
