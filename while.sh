list='123,123'

for var in $list
do
    echo $var
done

# 数组
array_var1=(test1 test2 test3 test4)

# TODO
for var2 in $array_var1
do
    echo $var2
done

for i in {1..2}
do
   echo "Welcome $i times"
done

# 必须使用 (()) 包裹
for ((i=0;i<2;i++))
{
     echo "Welcome2 $i times"
}

echo {1..5}

echo {a..z}

# while true 时候可以终止循环，注意 true 本身会生成一个进程，所以如果是 true 直接使用 :
# 参考 while_exec.sh
# while condition
# do
#     commands;
# done


# 直到 给定的条件为真时候结束循环
# until condition
# do
#     commands;
# done