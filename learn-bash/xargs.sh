#!/bin/bash
# xargs

# xargs 默认的echo命令可以用来将多行输入转换成单行输出
cat temp.txt | xargs

# 每行两个元素
cat temp.txt | xargs -n 2

# TODO 按照分隔符 
echo "splitXsplit2Xsplit3Xsplit4" | xargs -d X
# 将输入分割成多行，每行包含两个单词
echo "splitXsplit2Xsplit3Xsplit4" | xargs -d X -n 2

# 查找所有 txt 文件并删除
# 使用find命令的-print0选项生成以空字符('\0')作为分隔符的输出，然后将其作为 xargs命令的输入。
# find . -type f -name "*.txt" -print0 | xargs -0 rm -f

# 查询 loc
find . -type f -name "*.txt" -print0 | xargs -0 wc –l

# 读取 temp.txt 后，读取参数作为 cat 
cat temp.txt | xargs -I {} cat {}
# cat temp.txt | (while read arg; do cat $arg; done)