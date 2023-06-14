#!/bin/bash

echo "test1" > temp.txt

echo "test2" > temp.txt

echo "test3" >> temp.txt


cat temp.txt

# 创建一个用于读取文件的文件描述符 3
exec 3<temp.txt
# 在命令中使用文件描述符3,用完就会被清理
cat<&3


exec 4>>temp.txt
echo "test34">&4
cat temp.txt