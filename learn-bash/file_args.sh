#!/bin/bash
# 读取传入的参数如 file_args a b c
for i in `seq 1 $#`
do
echo $i is $1
# shift 让参数向左移动一个位置
shift
done