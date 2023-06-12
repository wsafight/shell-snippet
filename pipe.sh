#!/bin/bash
# | 是管道，会将上一个命令的结果放入下一个
ls | cat -n > temp.txt

# 子 shell 法
# 当命令在子shell中执行时，不会对当前shell造成任何影响;所有的改变仅限于该子shell内。
cmd_output=$(cat temp.txt)
echo $cmd_output

# 保留输出的空格和换行符(\n)，必须使用双引号
# 这里没有成功，TODO
cmd_output2="$(cat temp.txt)"
echo $cmd_output2

# 反引用
# 虽然结果相同，但是该方案存储命令输出
cmd_output3=`ls | cat -n`
echo $cmd_output3