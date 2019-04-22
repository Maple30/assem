f = open('D0641771.asm','r')
Data = f.readlines()
Loca_Dic = {}
A = 0
X = 0
B = 0
L = 0

#for i in Data:
 #   print(i,end='')
print(Data[0])

Start = int(Data[0].split()[2])
a = []
for i in range(0,len(Data)):
    a.append(Data[i].split())
# print(a)
for i in range(0,len(a)):
    Loca_Dic[i*3+2000] = a[i]
print(Loca_Dic)