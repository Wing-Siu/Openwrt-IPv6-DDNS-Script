cat /tmp/hosts/odhcpd | grep DUID | awk -F " " '{print $NF}' | sed 's/\/128//g'
