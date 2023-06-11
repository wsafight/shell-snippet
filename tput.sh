#!/bin/bash
# tput 处理当前终端的相关信息

# 获取列数
tput cols
# 获取行数
tput lines

# 设置文本为粗体
tput bold

# 打印出当前的终端名
tput longname

# 将光标移动到坐标(100,100)处
tput cup 100 100

# 设置背景色 0-7
tput setb 7

# 设置前景色 0-7
tput setf 1

tput bold