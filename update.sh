#!/bin/bash

# Simple script to update my arch linux!
# Create by alvinpix, updates your arch linux!

# Get colors
Black='\033[1;30m'
Red='\033[1;31m'
Green='\033[1;32m'
Yellow='\033[1;33m'
Blue='\033[1;34m'
Purple='\033[1;35m'
Cyan='\033[1;36m'
White='\033[1;37m'
NC='\033[0m'
blue='\033[0;34m'
white='\033[0;37m'
lred='\033[0;31m'
IWhite="\[\033[0;97m\]"

# Check paru AUR helper
check_paru () {
    if ! command -v paru &> /dev/null; then
        echo -e "\033[1m\033[31mThe 'paru' command is not installed. Please install 'paru' before running this script.\033[0m"
        exit 1
    fi
}

# Get total_updates function
get_total_updates () {
#    local total_updates=$(($(checkupdates 2> /dev/null | wc -l || echo 0) + $(paru -Qua 2> /dev/null | wc -l || echo 0)))
     local updates=$(checkupdates 2> /dev/null | wc -l || echo 0)
     local aur_updates=$(paru -Qua 2> /dev/null | wc -l || echo 0)
     echo $((updates + aur_updates))
}

# Get get_list_updates function
get_list_updates () {
    echo -e "\033[1m\033[34mRegular updates:\033[0m"
    checkupdates | sed 's/->/\x1b[32;1m\x1b[0m/g'
}

# Get list aur updates function
get_list_aur_updates () {
    echo -e "\n\033[1m\033[34mAur updates available:\033[0m"
    paru -Qua | sed 's/->/\x1b[32;1m\x1b[0m/g'
}


# Update system function
update_system () {
    local total_updates=$(get_total_updates)

    if [[ "${total_updates}" -gt 0 ]]; then
        echo -e ""
        echo -e "\033[1m\033[33mThere are $total_updates upgrades available. Updating...\033[0m\n"
        get_list_updates
        get_list_aur_updates
        echo -e ""
        paru -Syu --nocombinedupgrade
    else
        echo -e "\033[1m\033[32mYour system is already updated!\033[0m"
    fi
}


# The script update banner
script_banner () {
echo -e "${Blue} ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  "⠀
echo -e "${Blue} ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  "⠀
echo -e "${Blue} ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  "⠀
echo -e "${Blue} ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀  "⠀
echo -e "${Blue} ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣷⣤⣙⢻⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀  "⠀
echo -e "${Blue} ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀ "
echo -e "${Blue} ⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀  "⠀
echo -e "${Blue} ⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⡿⠛⠛⠿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀  "⠀
echo -e "${Blue} ⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀  "⠀
echo -e "${Blue} ⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⠿⣆⠀⠀⠀  "⠀
echo -e "${Blue} ⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀  "⠀
echo -e "${Blue} ⠀⢀⣾⣿⣿⠿⠟⠛⠋⠉⠉⠀⠀⠀⠀⠀⠀⠉⠉⠙⠛⠻⠿⣿⣿⣷⡀⠀ "
echo -e "${Blue} ⣠⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⣄ "
echo -e "${Cyan}      ┬ ┬┌─┐┌┬┐┌─┐┌┬┐┌─┐      "
echo -e "${Cyan}      │ │├─┘ ││├─┤ │ ├┤       "
echo -e "${Cyan}      └─┘┴  ─┴┘┴ ┴ ┴ └─┘      "
}

# Call the functions the script
reset
script_banner
update_system
