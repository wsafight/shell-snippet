#!/bin/bash
# 当前文件描述了如何使用 cat

# 打印单个文件的内容
cat temp.txt

# 打印多个文件的内容
cat temp.txt bc.sh

# cat 可以将文件内容与终端输入拼接在一起。 -被作为stdin文本的文件名
echo 'Text through stdin' | cat - temp.txt

# -s 去除额外的空白行
# 此时多行空白仍旧会保留一行空白
cat -s temp.txt

# 标记制表符为 ^I，这样可以识别出来，有助于 python 这种语言找问题
cat -t temp.txt

# 显示行号
cat -n temp.txt