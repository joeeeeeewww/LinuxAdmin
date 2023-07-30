#!/bin/bash
# this script accepts only traffic from 10am til 4pm
iptables -F

iptables -A INPUT -p tcp --dport 22 -m time --timestart 10:00 --timestop 6:00 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP
