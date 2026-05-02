#!/bin/bash
#Color Definition
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
PURPLE="\e[35m"
CYAN="\e[36m"
RESET="\e[0m" 

clear

#System Variables
USER_NAME=$(whoami)
HOST_NAME=$(hostname)
OS_INFO=$(uname -o)
KERNEL=$(uname -r)

# ASCII ANIMAL BANNER
echo -e "${CYAN}"
cat << "EOF"
               /\_/\     CYBERKAIDO CORE ONLINE
              ( 0.0 )    ______________________
               > ^ <     Intrusion INterface V1.0
              /  |  \
             /___|___\
 
EOF
echo -e "${RESET}"

# SYSTEM INFO HEADER
echo -e "${GREEN}User:${RESET}$USER_NAME"
echo -e "${GREEN}Host:${RESET}$HOST_NAME"
echo -e "${GREEN}OS:${RESET}$OS_INFO"
echo -e "${GREEN}Kernel:${RESET}$KERNEL"

echo ""
echo -e "${PURPLE}====================================${RESET}"
echo -e "${YELLOW} Welcome to Cyberkaido Console${RESET}"
echo -e "${PURPLE}====================================${RESET}"

#Main loop 

while true
do
    echo ""
    echo -e "${BLUE} [cmd] ${RESET}Enter command (help for list):"
    read cmd
    case $cmd in
       help)
           echo -e "${YELLOW}"
           echo "Commands"
           echo "Scan - list files in directory"
           echo "Organize - Smart file organizer"
           echo "Sysinfo - show system details"
           echo "Clear - clear screen"
           echo "Exit - close console"
           echo -e "${RESET}"
    ;;
      Scan)
          read -p "Enter directory: " dir
          if [ -d "$dir" ]; then
             echo -e "${GREEN}Scanning ...${RESET}"
             ls -lah "$dir"
         else
            echo -e "${RED}Directory not found${RESET}"
         fi
    ;;
     Organize)
        read -p "Enter directory:" dir
        if [ -d "$dir" ]; then
           echo -e "${CYAN} Deploying file sorter ....${RESET}"
           mkdir -p "$dir/Documents" "$dir/Images" "$dir/Videos"
           mv "$dir"/*.pdf "$dir/Documents/" 2>/dev/null
           mv "$dir"/*.txt "$dir/Documents/" 2>/dev/null
           mv "$dir"/*.jpg "$dir/Images/"    2>/dev/null
           mv "$dir"/*.png "$dir/Images/"    2>/dev/null
           mv "$dir"/*.mp4 "$dir/Videos/"    2>/dev/null
               echo -e "${GREEN} \/Organization Complete${RESET}"
       else
               echo -e "${RED} Invalid directory${RESET}"
       fi
   ;;
     Sysinfo)
        echo -e "${CYAN}SYSTEM SNAPSHOT${RESET}"
        echo "User: $USER_NAME"
        echo "Host: $HOST_NAME"
        echo "OS: $OS_INFO"
        echo "Kernel: $KERNEL"
        uptime
   ;;
     Clear)
        clear
   ;;
     Exit)
        echo -e "${RED}Shutting down Cyberkaido Console....${RESET}"
        break
   ;;
     *)
       echo -e "${RED}Unknown command. Type 'help'${RESET}"
   ;;
   esac
done









































