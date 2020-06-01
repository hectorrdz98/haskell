print('Ingresa los valores de la matrix 3x3')
matrix = [[int(input()) for _ in range(3)] for _ in range(3)]

def reduceGauss(matriz3):
	aux=0
	for i in range(0,len(matriz3)):
		for j in range(i+1,len(matriz3)):
			aux=-1*(matriz3[j][i]/matriz3[i][i])
			for k in range(0,len(matriz3)):
				matriz3[j][k]=matriz3[j][k]+(aux*matriz3[i][k])
	return matriz3

matrizD=reduceGauss(matrix)
det=1
for i in range(0,len(matrizD)):
    det=det*matrizD[i][i]

print("Determinante por Gauss |A|={}".format(det))