def First(First_line=[]):
	try:
		if First_line[1]=="START" and int(First_line[2]):
			out.write(First_line[2]+"\t")
			for i,st in enumerate(First_line):
				if i == len(First_line)-1:
					out.write("\n")
					break
				out.write(First_line[i]+"\t\t")
			global Location
			Location = int(First_line[2])
	except ValueError:
		out.write("格式錯誤或其他問題")
	else:
		out.write("格式錯誤或其他問題")

def Sec_Step(com=[]):
	length = len(com)

	if length == 2:
		try:
			Location = Location+3
			out.write(Location + "\t" + optab[com[0]]+"\t\t" + com[2] + "\n")
		except KeyError:
			out.write("格式錯誤或其他問題"+"\n")
	elif length == 3:
		try:
			Location = Location+3
			out.write(Location + "\t" + optab[com[0]]+"\t\t" + com[2] + "\n")
		except KeyError:
			out.write("格式錯誤或其他問題"+"\n")
	elif  length == 4:
		try:
			Location = Location+3
			out.write(Location + "\t" + optab[com[0]]+"\t\t" + com[2] + "\n")
		except KeyError:
			out.write("格式錯誤或其他問題"+"\n")

#F input of PASS ONE
inp = open('input.asm','r')
#For output of PASS ONE
out = open("Intermediatefile.txt","w")
#SYMBOLTAB
symtab = open("SymbolTab.txt","w")

Loca_Dic = {}

optab = {
	"ADD":"18",
	"AND":"40",
	"COMP":"28",
	"DIV":"24",
	"J":"3C",
	"JEQ":"30",
	"JGT":"34",
	"JLT":"38",
	"JSUB":"48",
	"LDA":"00",
	"LDCH":"50",
	"LDL":"08",
	"LDX":"04",
	"MUL":"20",
	"OR":"44",
	"RD":"D8",
	"RSUB":"4C",
	"STA":"0C",
	"STCH":"54",
	"STL":"14",
	"STSW":"E8",
	"STX":"10",
	"SUB":"1C",
	"TD":"E0",
	"TIX":"2C",
	"WD":"DC"
}

buff = inp.readline()

First(buff.split())

buff = inp.readline() 
while(buff != ""):
	Sec_Step(buff.split())
	buff = inp.readline()

# Start = int(Data[0].split()[2])
# a = []
# for i in range(0,len(Data)):
#     a.append(Data[i].split())
# # print(a)
# for i in range(0,len(a)):
#     Loca_Dic[i*3+2000] = a[i]
# print(Loca_Dic)
