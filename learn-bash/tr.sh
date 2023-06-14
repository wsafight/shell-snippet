#!/bin/bash
# tr 是 translate 的简写

# 大写转小写
echo "HELLO WHO IS THIS" | tr 'A-Z' 'a-z'

# 加密
echo 12345 | tr '0-9' '9876543210'

echo 12345 | tr '0-9' '9876543210' | tr '9876543210' '0-9'

# ROT 13 字符向右移动 13 个位置
echo "tr came, tr saw, tr conquered." | tr 'a-zA-Z' 'n-za-mN-ZA-M'
# 因为是 26 个字母，所以在移动 13 位置即可

# 转化制表符为两个空白字符
tr '\t' '  ' < temp.txt

# 字符类
# alnum 字母和数字
# alpha 字母
# cntrl 控制（非打印）
# digit 数字
# lower 小写字母
# print 可打印字符
# punct 标点符号
# space 空白字符
# upper 大写字母
# xdigit 十六进制字符
# graph 图形字符

# 小写转大写
tr '[:lower]' '[:upper]'
