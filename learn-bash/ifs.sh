#!/bin/bash
# 内部字段分隔符(Internal Field Separator，IFS)是shell脚本编程中的一个重要概念

# csv 文件
data="name,gender,rollno,location"

# 保存老 $IFS
oldIFS=$IFS
# IFS现在被设置为,注释下面代码会一起打印出来 
IFS=, 
for item in $data
do
    echo Item: $item
done
IFS=$oldIFS