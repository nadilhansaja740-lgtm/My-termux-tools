#!/data/data/com.termux/files/usr/bin/bash

clear

echo "================================"
echo "       MY TERMUX TOOLS"
echo "          INSTALLER"
echo "================================"
echo

echo "[*] Checking Termux..."

if [ -z "$PREFIX" ]; then
    echo "[!] This script is designed for Termux."
    exit 1
fi

echo "[✓] Termux detected."
echo

echo "[*] Checking required commands..."

if ! command -v bash >/dev/null 2>&1; then
    echo "[!] Bash is required."
    exit 1
fi

echo "[✓] Bash found."
echo

echo "[*] Setting permissions..."

chmod +x run.sh
chmod +x tools/*.sh

echo "[✓] Permissions configured."
echo

echo "================================"
echo "       INSTALLATION COMPLETE"
echo "================================"
echo
echo "Run the tools with:"
echo
echo "    ./run.sh"
echo
