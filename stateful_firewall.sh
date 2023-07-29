#!/bin/bash
iptables -F

# always allow loopback on INPUT and OUTPUT chains
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT

#allow new incoming ssh traffic from certain ipaddress
iptables -A INPUT -p tcp --dport 22 -m state --state NEW -s sourceip -j DROP

# Drop INVALID states - these packets cant be identified on any state
iptables -A INPUT -m state --state INVALID -j DROP
iptables -A OUTPUT -m state --state INVALID -j DROP

# all outgoing & returned  traffics are allowed 
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -m state --state New,ESTABLISHED,RELATED -j ACCEPT

iptables -P INPUT DROP
iptables -P  OUTPUT DROP

