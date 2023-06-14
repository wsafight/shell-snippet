#!/bin/bash

echo "4 * 0.56" | bc

no=54;
result=`echo "$no * 1.5" | bc`
echo $result

# scale 小数精度
echo "scale=4;22/7" | bc


no=100
# obase 进制转换
echo "obase=2;$no" | bc

no2=1100100
# ibase 是原数据的进制
echo "obase=10;ibase=2;$no2" | bc