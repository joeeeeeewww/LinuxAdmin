#!/bin/bash
#THis flushes iptables to prevent dups in memory
iptables -F -t nat
iptables -F  
#drop incoming traffic to port 22f
iptables -A INPUT -p tcp --dport 22 -j DROP


#drop outgoing traffic to http & https
iptables -A OUTPUT -p tcp --dport 80 -j DROP
iptables -A OUTPUT -p tcp --dport 443 -j DROP

# this translates private address 10...etc to the public ip of this linux machine
iptables -t nat -A POSTROUTING -s 10.0.0.0/8 -o enp1s0 -j SNAT --to-source 80.0.0.1
