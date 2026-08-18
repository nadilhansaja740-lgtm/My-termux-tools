#!/bin/bash

# ==========================================
# Color Definitions (ANSI Escape Codes)
# ==========================================
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color
BOLD='\033[1m'

# Screen එක clear කිරීම
clear

# Loading Animation (Hacker Vibe)
echo -e "${GREEN}[*] Initializing system modules...${NC}"
sleep 0.4
echo -e "${GREEN}[*] Connecting to NH ACADEMY servers...${NC}"
sleep 0.4
clear

# ==========================================
# ASCII Art Banner
# ==========================================
echo -e "${CYAN}"
cat << "EOF"
 ███╗   ██╗██╗  ██╗    █████╗  ██████╗ █████╗ ██████╗ ███████╗███╗   ██╗██╗   ██╗
 ████╗  ██║██║  ██║   ██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔════╝████╗  ██║╚██╗ ██╔╝
 ██╔██╗ ██║███████║   ███████║██║     ███████║██║  ██║█████╗  ██╔██╗ ██║ ╚████╔╝ 
 ██║╚██╗██║██╔══██║   ██╔══██║██║     ██╔══██║██║  ██║██╔══╝  ██║╚██╗██║  ╚██╔╝  
 ██║ ╚████║██║  ██║   ██║  ██║╚██████╗██║  ██║██████╔╝███████╗██║ ╚████║   ██║   
 ╚═╝  ╚═══╝╚═╝  ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═══╝   ╚═╝   
EOF
echo -e "${NC}"

# ==========================================
# Tool Details Box
# ==========================================
echo -e "${WHITE}+-------------------------------------------------------------+${NC}"
echo -e "${WHITE}|${GREEN}  [+] Tool Name   :${YELLOW} NH MULTI-TOOL CLI                         ${WHITE}|${NC}"
echo -e "${WHITE}|${GREEN}  [+] Version     :${YELLOW} v1.0.0 (Official Release)                 ${WHITE}|${NC}"
echo -e "${WHITE}|${GREEN}  [+] Owner       :${RED} NH ACADEMY                                ${WHITE}|${NC}"
echo -e "${WHITE}|${GREEN}  [+] GitHub      :${CYAN} https://github.com/YourUsername          ${WHITE}|${NC}"
echo -e "${WHITE}+-------------------------------------------------------------+${NC}"
echo ""

# ==========================================
# Interactive Menu
# ==========================================
echo -e "${BOLD}${YELLOW}[ SELECT AN OPTION ]${NC}"
echo -e "${GREEN}[1]${WHITE} System Information Check"
echo -e "${GREEN}[2]${WHITE} Update & Upgrade Termux"
echo -e "${GREEN}[3]${WHITE} Ping Test"
echo -e "${RED}[0]${WHITE} Exit"
echo ""

# User Input Prompt (Hacker Style)
read -p "$(echo -e ${CYAN}'[NH-ACADEMY@termux]~# '${NC})" option

case $option in
    1)
        echo -e "\n${YELLOW}[*] System Info:${NC}"
        uname -a
        ;;
    2)
        echo -e "\n${GREEN}[*] Updating Packages...${NC}"
        pkg update && pkg upgrade -y
        ;;
    3)
        echo -e "\n${CYAN}[*] Testing Connection...${NC}"
        ping -c 4 google.com
        ;;
    0)
        echo -e "\n${RED}[!] Exiting Tool. Goodbye!${NC}"
        exit 0
        ;;
    *)
        echo -e "\n${RED}[X] Invalid Option! Try again.${NC}"
        ;;
esac

