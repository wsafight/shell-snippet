#!/bin/bash
# 使用 函数

# { 必须在下一行中
function fname() 
{
    echo 'hello function'
}

fname2() 
{
    echo 'hello function2'
}

fname3() { echo 'hello function3'; }

fname;
fname2;
fname3;

fname4()
{
    # 脚本名称
    echo $0;
    # 参数1，参数 2 $n是第n个参数。
    echo $1, $2;
    # 以列表的方式一次性打印所有参数
    echo "$@";
    # 类似于$@，但是所有参数被视为单个实体
    echo "$*";
    return 0;
}
# “$@" 要比 "$*" 用得多。由于"$*"将所有的参数当作单个字符串，因此它很少被使用。
fname4 1 2;

# 没秒都会调用 recursion 一次
recursion()
{
    echo $1;
    sleep 1;
    recursion 'recursion hello';
}

recursion hello;