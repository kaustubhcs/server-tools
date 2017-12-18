#!/bin/sh
# KTB SCRIPT

# External NIC with internet
ENIC=wlp8s0

#Internal NIC for nodes
INIC=enp7s0

echo 1 > /proc/sys/net/ipv4/ip_forward

iptables -t nat -A POSTROUTING -o $ENIC -j MASQUERADE
iptables -A FORWARD -i $ENIC -o $INIC -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i $INIC -o $ENIC -j ACCEPT

#Open port 27
iptables -A INPUT -p tcp -m tcp --dport 27 -j ACCEPT
