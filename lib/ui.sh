#!/data/data/com.termux/files/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

source "$SCRIPT_DIR/config/colors.sh"

WIDTH=42

draw_line() {
    printf '%*s\n' "$WIDTH" '' | tr ' ' '='
}

box_top() {
    echo -e "${B_CYAN}+----------------------------------------+${RESET}"
}

box_title() {
    local title="$1"

    box_top
    printf "${B_CYAN}|${RESET} ${B_WHITE}%-38s${RESET}${B_CYAN}|${RESET}\n" "$title"
    echo -e "${B_CYAN}+----------------------------------------+${RESET}"
}

box_item() {
    local number="$1"
    local icon="$2"
    local name="$3"

    printf "${B_CYAN}|${RESET} ${B_YELLOW}[${number}]${RESET} ${icon} ${B_WHITE}%-29s${RESET}${B_CYAN}|${RESET}\n" "$name"
}

box_back() {
    printf "${B_CYAN}|${RESET} ${B_RED}[00]${RESET} <- ${B_WHITE}%-29s${RESET}${B_CYAN}|${RESET}\n" "Back"
}

box_bottom() {
    echo -e "${B_CYAN}+----------------------------------------+${RESET}"
}

success() {
    echo -e "${B_GREEN}[+] $1${RESET}"
}

error() {
    echo -e "${B_RED}[-] $1${RESET}"
}

info() {
    echo -e "${B_CYAN}[*] $1${RESET}"
}

warning() {
    echo -e "${B_YELLOW}[!] $1${RESET}"
}

pause_screen() {
    echo
    read -rp "Press ENTER to continue..."
}
