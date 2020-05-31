from itertools import permutations 

print('Ingresa los valores de la matrix 3x3')
matrix = [[int(input()) for _ in range(3)] for _ in range(3)]

total=0.0
li=[i for i in range(len(matrix))]
perm = permutations(li, len(matrix))

for i in list(perm): 
    con=0
    aux=0
    mul=1
    for j in range(len(i)):
    	for k in range(j,len(i)): 
    		if i[j]>i[k]: con+=1
    for v in range(len(matrix)):
    	mul=mul*matrix[aux][i[aux]]
    	aux+=1
    total=total+(((-1)**con)*mul)

print("Determinante por permutaciones |A|={}".format(total))