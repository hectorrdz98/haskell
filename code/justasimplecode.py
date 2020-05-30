
import re
import math

def sayhi():
    print("hi!")

def saybye():
    print("bye!")

if __name__ == "__main__":
    sayhi()
    print("This is just a sample python code~")
    var1 = 0
    var2 = True
    var3 = input()
    for _ in range(3):
        var1 += 1
    for n in range(1,2):
        var1 *= n
    print("n:",var1)
    saybye()
else :
    notexec = False or False or True and False and True
    while notexec:
        print("error")
    print("final error")