#!/data/data/com.termux/files/usr/bin/bash

clear

echo "========================================"
echo "          BATTERY INFORMATION"
echo "========================================"
echo

if command -v termux-battery-status >/dev/null 2>&1; then
    termux-battery-status
else
    echo "[!] termux-api is not installed."
    echo
    echo "Install it with:"
    echo
    echo "pkg install termux-api"
fi

echo
read -rp "Press ENTER to continue..."
