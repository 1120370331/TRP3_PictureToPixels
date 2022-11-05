# PictureToPixel
## To turn your picture into html texts and save in TRP3 documents.
### How To Use?
1. define your picture path in your folder.
2. use function makepixel() with arguments.For example:
```

path = "pic1.png"
path_huge = "topixeled_huge.txt"
path_medium = "topixeled_medium.txt"
path_small = "topixeled_small.txt"

makepixel(path,savepath=path_huge,size=template_huge,title="",lore="LargeSize",tolerance=4,accuracy_y=8,accuracy_x=8,mode=completed_text)
makepixel(path,savepath=path_medium,size=template_medium,title="",lore="MediumSize",tolerance=4)
makepixel(path,savepath=path_small,size=template_small,title="",lore="SmallSize",tolerance=4)
```
- ### Note:what are theses args?
- - path:Your picture's path
- - savepath:The output directory of processed text.End with ***.txt*** is okay.
- - size:To resize your picture as sepeficed size.
- - titie:The title of your picture,may show on the picture,set it "" to skip it.
- - lore:The lore of your picture,may show under title,set it "" to skip it.
- - tolerance:Merge pixels within tolerance,to reduce string length.
- - accuracy_x/accuracy_y:How many pixels to average,the smaller , the more precise.
- - label:Points used for pixmap,only works in ***completed_text*** mode,defaultly use ***█***
3. run this .py document,waiting and get your string in the documents you have setted in *savepath*
4. Now there are two situations:
* For ***completed_text*** mode, just copy the texts in the output document and paste it to your documents in TRP3 item.
* For ***short_var*** mode, follow these steps.
- 1. import the item in *QuickImport.txt* to your TRP3 database.
- 2. paste your texts in workflow:onUse, where to change the variable ***picstring***
- 3. use your item then you will see your picture.
- 4. You can change your item name and use description later if not prefer Chinese.
5. ***Now you can trade your item to others and show your picture to everyone who has TRP3-Extended Plugin!***