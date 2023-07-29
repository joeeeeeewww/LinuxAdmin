#!/bin/bash

iptables -F INPUT

PERMITTED_MACS="07:12:33:44:55:43 07:12:22:44:55:43 07:12:33:44:11:43" 

for MAC in  $PERMITTED_MACS
do
	iptables -A FORWARD -m mac --mac-source $MAC -j ACCEPT
	echo "$MAC permitted"
done


iptables -P FORWARD DROP
