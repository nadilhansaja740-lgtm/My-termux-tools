#!/data/data/com.termux/files/usr/bin/bash

while true
do
    clear

    echo "╔════════════════════════════════╗"
    echo "║       MY TERMUX TOOLS          ║"
    echo "╚════════════════════════════════╝"
    echo
    echo "[1] 📱 System Information"
    echo "[2] 💾 Storage Information"
    echo "[3] 🌐 Network Information"
    echo "[4] ❌ Exit"
    echo
    read -p "Select an option: " choice

    case "$choice" in

        1)
            bash tools/system-info.sh
            echo
            read -p "Press Enter to return..."
            ;;

        2)
            bash tools/storage-info.sh
            echo
            read -p "Press Enter to return..."
            ;;

        3)
            bash tools/network-info.sh
            echo
            read -p "Press Enter to return..."
            ;;

        4)
            clear
            echo "Thanks for using My Termux Tools!"
            exit 0
            ;;

        *)
            echo
            echo "Invalid option!"
            sleep 2
            ;;

    esac
done
