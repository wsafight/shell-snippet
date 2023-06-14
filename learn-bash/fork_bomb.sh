#!/bin/bash
# fork 炸弹

# 这个函数会一直地生成新的进程，最终形成拒绝服务攻击
# :(){ :|:& };:

# 代码类似于所示
# fork() { fork | fork & }
# fork

# 函数被定义 (fork()) 为调用自身 (fork)，然后将其结果通过管道传递给自己。


# Microsft Windows 中，也有此类 fork bomb, 即 %0 | %0
# %0 是当前正在执行的批处理文件的名称。仅包含此行的批处理文件

# https://en.wikipedia.org/wiki/Fork_bomb 维基百科

# 可以通过修改配置文件 /etc/security/limits.conf 中的 nproc 来限制可生成的最大进程数，进而阻止这种攻击。
# 将所有用户可生成的进程数限制为100
# hard nproc 100
