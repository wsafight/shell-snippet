#!/bin/bash

# 不断运行，直到成功

repeat() 
{
    # 在大多数现代系统中，true 是作为 /bin 中的一个二进制文件来实现的
    # 注意：每执行一次循环，shell就不得不生成一个进程。
    while true 
    do
        $@ && return
    done
}

# 这样的话不会创建进程
repeat_fast() 
{
    while :
    do 
        $@ && return
    done
}

repeat_fast_time() 
{
    while :
    do
        # 2s 执行一次
        sleep 2
        $@ && return
        # sleep 2 应该放在这里，为了方便测试放在上面
    done
}

repeat_fast_time "ls"

