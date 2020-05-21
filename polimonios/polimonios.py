import re

#print('p1: ', end='')
p1 = '2x3+2x2+4x+5=6x'#input()
#print('p2: ', end='')
p2 = '-2x3+2x2-2x=0'#input()

p1div = p1.split("=")
p2div = p2.split("=")

partsFull = [p1div[0], p1div[1], p2div[0], p2div[1]]

xs = {}

for i in range(len(partsFull)):
    datas = re.findall('([\+\-])?(\d+)(x)?(\d+)?', partsFull[i])
    for data in datas:
        n = int(data[0] + data[1]) if data[0] else int(data[1])
        n = n if i % 2 == 0 else -n
        pos = int(data[3]) if data[3] else 1 if data[2] else 0
        if pos in xs:
            xs[pos] += n
        else:
            xs[pos] = n

output = ''
for key, val in xs.items():
    if val != 0:
        if output == '':
            value = val
        else:
            value = ('+' + str(val)) if val > 0 else val
        t = 'x' if key > 0 else ''
        grade = key if key > 1 else ''
        output += '{}{}{}'.format(value, t, grade)
print('{}=0'.format(output))