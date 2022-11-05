import io

St = ""
i = 0


while i < 1001 :
    i = i + 1
    St = St + "${line" + str(i) + "}\n"
file = io.open("GUI.txt","a")
file.write(St)
file.close