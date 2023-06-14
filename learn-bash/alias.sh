#!/bin/bash
# alias new_command='command sequence'

# 列举定义所有别名
alias

# apt-get install创建了一个别名
alias install='sudo apt-get install'

alias ll='ls -l'
alias vi='vim'

# 别名设置到 ~/.bashrc 数据中 避免关闭后消失
# echo 'alias cmd="command seq"' >> ~/.bashrc