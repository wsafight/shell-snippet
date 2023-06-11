#!/bin/bash

array_var1=(test1 test2 test3 test4)

echo ${array_var1[0]}


array_var2[0]="test1"
array_var2[1]="test2"
array_var2[2]="test3"
array_var2[3]="test4"

# 展示全部数据
echo ${array_var2[*]}
echo ${array_var2[@]}

# 展示数组长度
echo ${#array_var2[*]}

# bash 4.0 版本后才支持 数组
declare -a fruits_value
fruits_value=([apple]='100 dollars' [orange]='150 dollars')

echo ${fruits_value[apple]}

echo "Apple costs ${fruits_value[apple]}"

