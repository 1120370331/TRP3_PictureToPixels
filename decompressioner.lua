--[[
    使用方法：
    ①设置物品参数 picstring 为生成的值
    ②在工作流内执行此脚本
    ③在要打开的文档中中复制GUI.txt中的文字并粘贴
    就可以打开一个压缩过的像素画了
    --]]
local i = 0

while i < 1001 do
    i = i + 1
    setVar(args,"o","line"..tostring(i),"")
end


function extract(str,startlabel,endlabel)
    local sl = startlabel
    local el = endlabel
    local o,sp = string.find(str,sl)
    local ep,o = string.find(str,el)
    
    if sp ~= nil and ep ~= nil then
        
        local sp = sp+1
        local ep = ep-1
        local f = string.sub(str,sp,ep)
        return f

    else
        return ""
    end
end

local STRING = getVar(args,"o","picstring")

setVar(args,"o","TITLE",extract(STRING,"<title>","</title>"))
setVar(args,"o","LORE",extract(STRING,"<lore>","</lore>"))
setVar(args,"o","SIZE",extract(STRING,"<size>","</size>"))
setVar(args,"o","DISPLAY_TITLE",extract(STRING,"<title>{h1:c}{col:ffffff}","{/col}{/h1}</title>"))
setVar(args,"o","DISPLAY_LORE",extract(STRING,"<lore>{h3:c}{col:ffffff}","{/col}{/h3}</lore>"))
setVar(args,"o","DISPLAY_SIZE",extract(STRING,"<size>{h2:c}{col:ffffff}","{/col}{/h2}</size>"))


--[pic]
-- N xxxxx O


---从右侧遍历字符串，取指定字符的前后字符串
-- @param st = string 待处理字符串；

-- @return 取出的值 , 取完之后的字符串
-- end --
function oneline(st)

    
    local value = extract(st,"N","O")

    local le = string.len(value)

    if value ~= "" then
        
    
    
        st = string.sub(st,le+3,string.len(st))
    end
    
    return value,st
end

function linedetail(li)
    local li_c = li.."<ED>"
    
    local counter = 0

    local STR = "{h3:c}"
    local colourcode = "FFFFFF"

    local i = 0

    while li_c ~= "<ED>" do

        
        local tims = extract(li_c,"<",">") --方块个数
        
        local time = tonumber(tims)
        
        counter = counter + string.len(tims) + 2
        li_c = string.sub(li_c,counter+1,string.len(li_c))
        counter = 0
        colourcode = string.sub(li_c,1,6)

        STR = STR .."{col:"..colourcode.."}"
        
        while time > 0 do

            time = time - 1
            STR = STR .. "█"
            
        end

        STR = STR.."{/col}"
        li_c = string.sub(li_c,7,string.len(li_c))

        i = i + 1
    end
    STR = STR.."{/h3}"
    return STR
end
local line_num = 0
local PIC = extract(STRING,"<pic>","</pic>")
while PIC ~= "<end>" do
    line_num = line_num + 1
    local lineinf,b = oneline(PIC)
    PIC = b
    --<56>FFFFFF
    setVar(args,"o","line"..tostring(line_num),linedetail(lineinf))

end
setVar(args,"o","写入画作","查看画作")
setVar(args,"o","picstring",nil)