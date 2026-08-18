#!/data/data/com.termux/files/usr/bin/bash

echo "================================"
echo "       SYSTEM INFORMATION"
echo "================================"

echo "Device      : $(getprop ro.product.model)"
echo "Manufacturer: $(getprop ro.product.manufacturer)"
echo "Android     : $(getprop ro.build.version.release)"
echo "SDK         : $(getprop ro.build.version.sdk)"
echo "Architecture: $(uname -m)"
echo "Kernel      : $(uname -r)"

echo "================================"
