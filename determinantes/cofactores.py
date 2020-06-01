print('Ingresa los valores de la matrix 3x3')
matrix = [[int(input()) for _ in range(3)] for _ in range(3)]

def det(A):
    B = [k[:] for k in A]
    n = len(A)
    total = 0.0
    if n > 2:
        for i in range(n):
            factor = B[0][i]
            signo = -2 * (i % 2) + 1
            B.remove(B[0])
            for j in range(0, n - 1):
                B[j].pop(i)
            total = total + factor * signo * det(B)
            B = [k[:] for k in A]
        return total
    else:
        return (B[0][0] * B[1][1]) - (B[0][1] * B[1][0])

print("Determinante por cofactores |A|={}".format(det(matrix)))