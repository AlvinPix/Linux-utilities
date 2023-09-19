#!/bin/bash

# COLORS USE THE SCRIPT | START-KALI
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

# PRESENT THE SCRIPT BANNER
minibanner () {
echo -e "${Red}  ______     ______   ______     ______     ______		"
echo -e "${Red} /\  ___\   /\__  _\ /\  __ \   /\  == \   /\__  _\		"
echo -e "${Red} \ \___  \  \/_/\ \/ \ \  __ \  \ \  __<   \/_/\ \/		"
echo -e "${Red}  \/\_____\    \ \_\  \ \_\ \_\  \ \_\ \_\    \ \_\		"
echo -e "${Red}   \/_____/     \/_/   \/_/\/_/   \/_/ /_/     \/_/		"
}

starting () {
echo ""
minibanner
echo ""
echo -e "${White} [${Blue}i${White}] Setup screen monitor"
sleep 1
xrandr --newmode "1600x900_60.00"  118.25  1600 1696 1856 2112  900 903 908 934 -hsync +vsync
xrandr --addmode VGA-1 "1600x900_60.00"
xrandr -s 1600x900_60.00
echo -e "${White} [${Blue}i${White}] Setup keyboard"
setxkbmap es
exit 0
}


# CALL FUNTIONS THE SCRIPT
reset
starting
