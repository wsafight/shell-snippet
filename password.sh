#!/bin/sh
#Filename: password.sh

# stty命令的选项-echo禁止将输出发送到终端，而选项echo则允许发送输出。

# 在读取密码前禁止回显
echo -e "Enter password: " 
stty -echo
read password
# 重新允许回显
stty echo
echo
echo Password read.