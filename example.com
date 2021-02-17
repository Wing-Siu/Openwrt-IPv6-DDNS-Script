cat /tmp/hosts/odhcpd | grep HostDUID | awk -F " " '{print $NF}' | sed 's/\/128//g'
