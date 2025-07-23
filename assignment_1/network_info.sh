# This is the Task 5
# #!/bin/bash

# hostname gives us the name, and the -i flag gives us the ip address of the host
hostname -i

# ping sends ICMP echos requests, and receives the replies to check the connectivity, i.e. reachable or not
# curl -f -LI can also be used
ping google.com

# netstat displays network connections, basic statistics and network-related info
# -tuln flag means: t stands for tcp ports, u stands for udp ports, l stands for listening ports, n stands for port numbers
# only -ln flag can also be used, but other info like active UNIX domain sockets are also displayed with it
netstat -tuln

# to see the network interface details
# alternate to this are:
# ip addr
# nmcli device status
ifconfig

# key.pem should have '400' as its permissions
# i did not had any remote system to do ssh, so i wrote the syntax in here
# scp, secure shell copy, is used to copy share files/directories within the local and remotely connected systems
pvt_key=/path/to/key.pem
chmod 400 $pvt_key
scp -i "pvt_key" testfile.txt some_url_to_the_remote_system:destination_path_in_remote_system
