# -*- coding: utf-8 -*-

from distutils.log import error
from pickletools import uint8
import numpy as np
import os
from multiprocessing import *
from time import sleep
from PIL import Image
from pylab import *
import matplotlib.pyplot as plt

# TILER CONFS


def colorcode(value):
    digit = list(map(str, range(10))) + list("ABCDEF")
    if isinstance(value, tuple):
        string = ''
        for i in value:
            a1 = i // 16
            a2 = i % 16
            string += digit[a1] + digit[a2] 
        return string
    elif isinstance(value, str):
        a1 = digit.index(value[1]) * 16 + digit.index(value[2])
        a2 = digit.index(value[3]) * 16 + digit.index(value[4])
        a3 = digit.index(value[5]) * 16 + digit.index(value[6])
        return (a1, a2, a3)


def arrange(array):
    l = len(array)
    sum = 0
    for i  in array:
        sum = sum + i
    ar = sum/l
    return ar

def istole(tolerance,history,now):

    if now > history :
        if now - tolerance <= history:
            return True
    elif now < history :
        if now + tolerance >= history:
            return True
    elif now == history:
        return True
    else:
        return False






#mode：short_var（需要解析的变量值）completed_text（直接可以复制进文档的字符串）
def makepixel(picturepath,size=None,savepath=None,title="A picture",lore="Made by editor.",accuracy_x=8,accuracy_y=8,tolerance=0,mode="completed_text",label="█"):

    if savepath == None:
        place = 0
        for i in range(len(picturepath)-1,-1,-1):
            

            #abc 2 = 3-(2-1)
            if i == "." :
                break
            place = place+1
            

        
        savepath = "topixeled_"+picturepath[0:len(picturepath)-place]


    img = Image.open(picturepath).convert("RGB")
    w = img.width #图片的宽
    h = img.height #图片的高
    time = w/size
    pixel_w = w/accuracy_x
    pixel_h = w/accuracy_y

    if size != None:
        img = img.resize((int(w/time),int(h/time))) #压缩图片
    w1 = img.width
    h1 = img.height

    Str = ""

    x=0
    y=0
    h_colorcode = "FOOBA"
    h_Blue = -999
    h_Red = -999
    h_Green = -999


    if mode == "completed_text":
        
        Str = Str + "<title>"+title+"</title>"
        Str = Str + "<lore>"+lore+"</lore>"
        Str = Str + "<size>"+"("+str(int(w1/accuracy_x))+"*"+str(int(h1/accuracy_y))+")"+"</size>"

        while y < h1 :

            Str = Str+"{h3:c}{col:ffffff}"
            
            while x < w1:
                crop_img = img.crop((x,y,x+32,y+32))
                
                ar = uint8(crop_img)
                raid = len(ar[:,0])
                alist = np.array([])
                

                for i in range(raid):
                    alist = np.append(alist,ar[i,:])
                


                
                Blue = int(arrange(alist[0:raid:3]))

                Red = int(arrange(alist[1:raid:3]))
                Green = int(arrange(alist[2:raid:3]))




                #Code = colorcode((Blue,Red,Green)) 
                Code = colorcode((Blue,Red,Green))

                if istole(tolerance,h_Blue,Blue)  == True and istole(tolerance,h_Red,Red) == True and istole(tolerance,h_Green,Green) == True :
                    tttr = label
                else:
                    tttr = "{/col}{col:"+Code+"}"+label
                    h_Blue = Blue
                    h_Red = Red
                    h_Green = Green
                Str = Str + tttr
                x = x + accuracy_x

            Str = Str + "{/h3}"
            x = 0
            y = y + accuracy_y
        

#{h1:c} = J {/h1} = K {h2:c} = L {/h2} = M {h3:c} = N {/h3} = O 
    elif mode == "short_var" :
        
        Str = "<title>{h1:c}{col:ffffff}"+title+"{/col}{/h1}</title>"
        Str = Str + "<lore>{h3:c}{col:ffffff}"+lore+"{/col}{/h3}</lore>"
        Str = Str + "<size>{h2:c}{col:ffffff}"+"("+str(int(w1/accuracy_x))+"x"+str(int(h1/accuracy_y))+")"+"{/col}{/h2}</size>"
        amount = 0
        Case = "Notwaiting"
        Str = Str + "<pic>"
        while y < h1 :

            Str = Str+"N"
            
            while x < w1:
                crop_img = img.crop((x,y,x+32,y+32))
                
                ar = uint8(crop_img)
                raid = len(ar[:,0])
                alist = np.array([])
                for i in range(raid):
                    alist = np.append(alist,ar[i,:])
                Blue = int(arrange(alist[0:raid:3]))

                Red = int(arrange(alist[1:raid:3]))
                Green = int(arrange(alist[2:raid:3]))

                #Code = colorcode((Blue,Red,Green)) 
                if Case == "waiting" :

                    if istole(tolerance,h_Blue,Blue)  == True and istole(tolerance,h_Red,Red) == True and istole(tolerance,h_Green,Green) == True :
                        amount = amount + 1
                    else:
                        
                        Code = colorcode((h_Blue,h_Red,h_Green))
                        #将[x]FFFFFF写入字符串
                        tttr = "<" + str(amount) + ">" + Code

                        Str = Str + tttr
                        Case = "Notwaiting"

                        amount = 1

                        h_Blue = Blue
                        h_Red = Red
                        h_Green = Green

                        Case = "waiting"
                else:
                    Case = "waiting"
                    amount = 1

                    h_Blue = Blue
                    h_Red = Red
                    h_Green = Green
                x = x + accuracy_x
            #如果最后一个方块仍然和第一个方块相同，则将这行改为总和形式。
            if istole(tolerance,h_Blue,Blue)  == True and istole(tolerance,h_Red,Red) == True and istole(tolerance,h_Green,Green) == True :
                amount = amount-1
                if amount > 0 :
                    Code = colorcode((h_Blue,h_Red,h_Green))
                    Str = Str + "<" + str(amount) + ">" + Code

            Str = Str + "O"
            x = 0
            y = y + accuracy_y
            h_Red = -999
            h_Blue = -999
            h_Green = -999
            Case = "Notwating"
        Str = Str + "<end></pic>"
    else:
        error("[ERROR]No Such A Mode(should be 'completed_text' or 'short_var')" )

    try:
        os.remove(savepath)
    except:
        None

    file = open(savepath,'a')

    file.write(Str)

    file.close

    #img.show()

#template(not necessary)
template_huge = 1450
template_medium = 620
template_small = 300



#tlerance:容差值，多少个RGB范围以内才会合并方块
#accuracy_x/y:精确值，即每相隔多少个像素取平均值
#mode:completed_text完整的字符串，直接复制到文档中可以直接看到，short_var压缩的字符串，储存空间小，需要配合物品进行解压。

# path = "pic1.png"
# path_huge = "topixeled_huge.txt"
# path_medium = "topixeled_medium.txt"
# path_small = "topixeled_small.txt"

# makepixel(path,savepath=path_huge,size=template_huge,title="",lore="LargeSize",tolerance=4,accuracy_y=8,accuracy_x=8)
# makepixel(path,savepath=path_medium,size=template_medium,title="",lore="MediumSize",tolerance=4)
# makepixel(path,savepath=path_small,size=template_small,title="",lore="SmallSize",tolerance=4)