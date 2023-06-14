#!/bin/bash
# success_test.sh #对命令行参数求值，比如
# success_test.sh ‘ls | grep txt’ 
eval $@
# $? 是 退出状态，它确定命令执行成功与否，如果命令正确退出，返回 0
if [ $? -eq 0 ];
then
    echo "$CMD executed success"
else
    echo "$CMD executed fail"
fi