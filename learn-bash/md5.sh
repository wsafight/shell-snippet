#!/bin/bash
# md5 校验 

# 32 个字符
md5sum temp.txt

# 输出多个 md5 结果
md5sum file1 file2 file3

# 40 个字符
sha1sum temp.txt

# 遍历目录树，计算其中所有文件的校验和
# md5deep

# r 递归 l 相对路径
md5deep -rl directory_path > directory.md5
sha1deep