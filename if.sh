#!/bin/bash
# 判断

val=0
# 注意空格
if [ $val -eq 0 ]
then
    echo '123'
fi

if [ $val -ne 1 ] 
then
    echo '234'
fi

val2=2

if [ $val2 -eq 0 ]
then
    echo '666'
else
    echo '777'
fi

val3=3

# eq 等于
[ $val3 -eq 3 ] && echo '前面是真的，执行'

# ne 不等于
[ $val3 -ne 3 ] || echo '前面是假的，执行'

# gt 大于
[ $val3 -gt 2 ]

# lt 小于
[ $val3 -lt 4 ]

# ge 大于或等于
[ $val3 -ge 4 ]

# le 小雨或者等于
[ $val3 -le 4 ]

# -a 逻辑 & 就是脚本中 &&
if [ $val3 -le 4 -a $val3 -eq 3 ] 
then 
    echo '前面还是真的'
fi

[ $val3 -le 4 -o $val3 -eq 3 ] && echo '前面还是真的2'

### 文件相关判断
file_name=temp.txt

# 如果给定的变量包含正常的文件路径或文件名，则返回真
[ -f $file_name ]
# 文件可以执行
[ -x $file_name ]
# 文件可以写
[ -w $file_name ]
# 文件可以读
[ -r $file_name ]
# 包含的是目录
[ -d $file_name ]
# 文件存在
[ -e $file_name ]
# 一个字符设备文件的路径
[ -c $file_name ]
# 一个块设备文件的路径
[ -b $file_name ]
# 文件是一个符号链接
[ -L $file_name ]

[ -r $file_name ] && echo 'temp.txt 可读'

### 字符串比较
str1=123
str2=123
str3=234

[[ $str1 = $str2 ]] && echo '字符串1 等于 字符串2'
[[ $str1 == $str2 ]] && echo '字符串1 等于 字符串2'

[[ $str1 != $str3 ]] && echo '字符串1 不等于 字符串3'

# -n 判断不是空字符串
[[ -n $str1 ]] && echo '字符串1 不是空字符串'

str4=''
# -z 判断空字符串
[[ -z $str4 ]] && echo '字符串4 是空字符串'


# 使用 test，但是 test 是一个命令，会生成进程性能较差
# [ 是 bash 的函数，比 test 好用很多
test $val -eq 0 && echo '使用 test 成功'