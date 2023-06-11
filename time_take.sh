#!/bin/bash
#文件名: time_take.sh
# 计算代码消耗时长

start=$(date +%s)

# code

end=$(date +%s)
difference=$((end - start))
echo Time taken to execute commands is $difference seconds.