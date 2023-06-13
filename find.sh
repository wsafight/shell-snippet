#!/bin/bash
# find 是 unix/linux 中的工具

# 查找当前文件夹
find . -print

# -name选项指定了待查找文件名的模式
find . -name '*.txt' -print

# -iname 忽略大小写
find . -iname '*.Txt' -print

# -o 是 or -a 是 and
find . \( -iname '*.txt' -o -name 'if.*' \) -print

# 查找 t 开头 m 在中间的 文件
find . \( -name '*m*' -a -name 't*' \) -print

# -path 选项可以限制所匹配文件的路径及名称
# 匹配文件 ./all/readme.txt，但无法匹 配 ./all.txt
find . -path '*/temp/*' -print

# -regex 正则匹配 以 txt 结尾的文件
find . -regex '.*\.txt$' -print

# -ireget 忽略大小写匹配
find . -iregex '.*\.Txt$' -print

# 也可以取反 ! 
find . ! -name "*.sh" -print


# find 命令在查找时会遍历完所有的子目录。
# 默认情况下，find命令不会跟随符号链接。
# -L 选项可以强制其改变这种行为。
# 如果碰上了指向自身的链接，find 命令就会陷入死循环中

# -L 选项告诉find命令跟随符号链接
# maxdepth 仅限当前目录
# 2>/dev/null 将有关循环链接的错误信息发送到空设备中
find -L . -maxdepth 1 -name '*.txt' 2>/dev/null

# -mindepth 选项类似于 -maxdepth
# 查找并打印那些距离起始路径至少有一定深度的文件
# 当前目录即使有 .txt 也不会被打印出来
find -L . -mindepth 2 -name '*.txt' 2>/dev/null

# -t 文件类型
# d 所有目录 dir
find . -type d -print
# f 普通文件
find . -type f -print
# l 符号链接
find . -type l -print
# c 字符设备
find . -type c -print
# b 块设备
find . -type b -print
# s 套接字
find . -type s -print
# p FIFO
find . -type p -print

### 时间
# 7 天内被访问过的所有文件
find . -atime -7 -print
# 恰好在7天前被访问过的所有文件
find . -atime 7 -print
# 访问时间超过7天的所有文件
find . -atime +7 -print

# mtime 修改时间（文件内容修改时间） ctime 变化时间（文件元数据(例如权限或所有权)最后一次改变的时间）
find . -mtime -7 -print
find . -ctime 7 -print


# amin mmin cmin 表示分钟

# newer 比较修改时间
# 比 temp.txt 修改时间更新的文件
find  . -maxdepth 1 -type f -newer temp.txt -print

### 文件大小
# 比 30 k 更大的文件
find . -size +30k
# 比 30 k 更小的文件
find . -size -30k

# 30 k 的文件
find . -size 30k

# b (块) 512 字节
# c 字节
# w 字（2 字节）
# k 千字节(1024字节)
# M 兆字节(1024k)
# G 吉字节(1024M)

# perm 基于文件权限匹配
find . -type f -perm 644 -print
# user 找出由某个特定用户所拥有的文件。
find . -user xxx -print

find . -type f -name "*.temp" -delete