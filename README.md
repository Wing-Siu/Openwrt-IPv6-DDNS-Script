# Openwrt IPv6 DDNS Script
脚本根据DUID给内网已通过DHCPV6分配地址的IPV6终端实现DDNS
## 获取终端DUID  
登录LUCI - 状态 - 概览 - DHCPv6分配 复制终端DUID **此处DUID和终端MAC地址关联**
## SHELL操作实例  
root@OpenWrt:~\# mkdir /etc/ddnsv6  
root@OpenWrt:~\# cd /etc/ddnsv6  
上传脚本到/etc/ddnsv6   
root@OpenWrt:/etc/ddnsv6\# sed -i 's/DUID/HostDUID/' example.com  \#**HostDUID为终端的DUID**   
root@OpenWrt:/etc/ddnsv6\# chmod +x example.com \#**给予脚本权限**  
root@OpenWrt:/etc/ddnsv6\# mv example.com yourdomain.com \#**重命名example.com为要DDNS的域名** 
## 新建DDNS任务
登录LUCI - 服务 - 动态DNS  
这里不用说了吧
### 基本设置
IP地址版本选择IPV6  
### 高级设置
IP地址来源选择脚本
输入脚本路径
