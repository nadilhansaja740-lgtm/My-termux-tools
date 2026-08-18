#!/data/data/com.termux/files/usr/bin/bash

# ==========================================
#        MY-TERMUX-TOOLS
#        SECURITY TOOLKIT v1.0
# ==========================================

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

# Load UI
source "$BASE_DIR/config/colors.sh"
source "$BASE_DIR/lib/ui.sh"

# ==========================================
# DEVICE MENU
# ==========================================

device_menu() {

    while true; do
        clear

        box_title "DEVICE TOOLS"

        box_item "01" "[D]" "Device Information"
        box_item "02" "[B]" "Battery Information"
        box_item "03" "[S]" "Storage Information"
        box_back

        box_bottom

        echo
        read -rp "Select > " choice

        case "$choice" in

            1|01)
                "$BASE_DIR/tools/device/device-info.sh"
                ;;

            2|02)
                "$BASE_DIR/tools/device/battery-info.sh"
                ;;

            3|03)
                "$BASE_DIR/tools/device/storage-info.sh"
                ;;

            0|00)
                return
                ;;

            *)
                error "Invalid option"
                sleep 1
                ;;

        esac
    done
}


# ==========================================
# NETWORK MENU
# ==========================================

network_menu() {

    while true; do
        clear

        box_title "NETWORK TOOLS"

        box_item "01" "[N]" "Network Information"
        box_item "02" "[P]" "Ping Test"
        box_item "03" "[D]" "DNS Check"
        box_back

        box_bottom

        echo
        read -rp "Select > " choice

        case "$choice" in

            1|01)
                "$BASE_DIR/tools/network/network-info.sh"
                ;;

            2|02)
                "$BASE_DIR/tools/network/ping-test.sh"
                ;;

            3|03)
                "$BASE_DIR/tools/network/dns-check.sh"
                ;;

            0|00)
                return
                ;;

            *)
                error "Invalid option"
                sleep 1
                ;;

        esac
    done
}


# ==========================================
# RECON MENU
# ==========================================

recon_menu() {

    while true; do
        clear

        box_title "RECON TOOLS"

        box_item "01" "[D]" "DNS Lookup"
        box_item "02" "[H]" "HTTP Headers"
        box_back

        box_bottom

        echo
        read -rp "Select > " choice

        case "$choice" in

            1|01)
                "$BASE_DIR/tools/recon/dns-lookup.sh"
                ;;

            2|02)
                "$BASE_DIR/tools/recon/http-headers.sh"
                ;;

            0|00)
                return
                ;;

            *)
                error "Invalid option"
                sleep 1
                ;;

        esac
    done
}


# ==========================================
# SECURITY MENU
# ==========================================

security_menu() {

    while true; do
        clear

        box_title "SECURITY TOOLS"

        box_item "01" "[H]" "File Hash"
        box_item "02" "[P]" "Password Strength"
        box_item "03" "[A]" "Permission Audit"
        box_back

        box_bottom

        echo
        read -rp "Select > " choice

        case "$choice" in

            1|01)
                "$BASE_DIR/tools/security/file-hash.sh"
                ;;

            2|02)
                "$BASE_DIR/tools/security/password-check.sh"
                ;;

            3|03)
                "$BASE_DIR/tools/security/permission-audit.sh"
                ;;

            0|00)
                return
                ;;

            *)
                error "Invalid option"
                sleep 1
                ;;

        esac
    done
}


# ==========================================
# DIAGNOSTICS MENU
# ==========================================

diagnostics_menu() {

    while true; do
        clear

        box_title "DIAGNOSTICS"

        box_item "01" "[I]" "Internet Test"
        box_item "02" "[N]" "Network Test"
        box_back

        box_bottom

        echo
        read -rp "Select > " choice

        case "$choice" in

            1|01)
                "$BASE_DIR/tools/diagnostics/internet-test.sh"
                ;;

            2|02)
                "$BASE_DIR/tools/diagnostics/network-test.sh"
                ;;

            0|00)
                return
                ;;

            *)
                error "Invalid option"
                sleep 1
                ;;

        esac
    done
}


# ==========================================
# SYSTEM MENU
# ==========================================

system_menu() {

    while true; do
        clear

        box_title "SYSTEM TOOLS"

        box_item "01" "[S]" "System Information"
        box_back

        box_bottom

        echo
        read -rp "Select > " choice

        case "$choice" in

            1|01)
                "$BASE_DIR/tools/system/system-info.sh"
                ;;

            0|00)
                return
                ;;

            *)
                error "Invalid option"
                sleep 1
                ;;

        esac
    done
}


# ==========================================
# MAIN MENU
# ==========================================

main_menu() {

    while true; do

        clear

        box_title "MY-TERMUX-TOOLS v1.0"

        box_item "01" "[D]" "DEVICE"
        box_item "02" "[N]" "NETWORK"
        box_item "03" "[R]" "RECON"
        box_item "04" "[S]" "SECURITY"
        box_item "05" "[X]" "DIAGNOSTICS"
        box_item "06" "[T]" "SYSTEM"
        box_back

        box_bottom

        echo
        read -rp "Select > " choice

        case "$choice" in

            1|01)
                device_menu
                ;;

            2|02)
                network_menu
                ;;

            3|03)
                recon_menu
                ;;

            4|04)
                security_menu
                ;;

            5|05)
                diagnostics_menu
                ;;

            6|06)
                system_menu
                ;;

            0|00)
                clear
                success "MY-TERMUX-TOOLS closed."
                exit 0
                ;;

            *)
                error "Invalid option"
                sleep 1
                ;;

        esac

    done
}


# ==========================================
# START TOOLKIT
# ==========================================

main_menu
