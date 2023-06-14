#!/bin/bash
# 此处介绍了 read 函数

# read -n number_of_chars variable_name 
# 读取两个字符，存储到 vars 变量中去
read -n 2 vars
printf $vars

# 以不会显示的情况下读取密码
read -s var
echo $var

# p 显示提示信息
read -p "Enter input:" var2

# read -t timeout var
# 在给定时间内写入
read -t 3 var4
echo $var4


# read -d delim_char var
# 特定的定界符作为输入行的结束 : 同时也会抛弃 : 字符串 
read -d ":" var5
echo $var5

# 以上的 read 可以组合使用