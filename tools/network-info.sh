#!/data/data/com.termux/files/usr/bin/bash

clear

echo "================================"
echo "         NETWORK INFO"
echo "================================"
echo

echo "Hostname:"
hostname

echo
echo "Network Interfaces:"
ip addr 2>/dev/null | grep -E "^[0-9]+:|inet "

echo
echo "================================"
echo "          NETWORK DONE"
echo "================================"
