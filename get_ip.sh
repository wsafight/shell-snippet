function getIP() { /sbin/ifconfig $1 | grep 'inet '; }

export -f getIP;
# 导出 getIP 后调用 get-ip-use
sh ./get-ip-use.sh
