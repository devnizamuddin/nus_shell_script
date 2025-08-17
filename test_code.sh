#!/bin/bash

#*
#* ╔══════════════════════════════════════════════════════════════════════════════════════════════════╗
#* ║                                   💰 Imported Files                                              ║
#* ╚══════════════════════════════════════════════════════════════════════════════════════════════════╝
#*

source ./text_style.sh
# source ./printer.sh


#*
#* ┏==================================================================================================┓
#* ┃                                           Text Style.                                            ┃
#* ┗==================================================================================================┛
#*

#* Text Color
#
RED='\033[31m'
GREEN='\033[32m'
BLUE='\033[34m'
YELLOW='\033[33m'
MAGENTA='\033[35m'
CYAN='\033[36m'
WHITE='\033[97m'
GOLDEN='\033[38;5;214m'
#
#* Text Style
#
BOLD='\033[1m'
DIM='\033[2m'
UNDERLINE='\033[4m'
BLINK='\033[5m'
REVERSE='\033[7m'
STRIKETHROUGH='\033[9m'
#
#* Background Color Variables
#
BG_RED='\033[41m'
BG_YELLOW='\033[43m'
BG_BLUE='\033[44m'
BG_MAGENTA='\033[45m'
BG_CYAN='\033[46m'
BG_WHITE='\033[47m'
TEXT_COLOR='\033[1;37m'
BG_GOLDEN='\033[48;5;214m'  # Extended color for golden background
BG_GREEN='\033[42m'


#* Reset the style
RESET='\033[0m'
NC='\033[0m'


echo "Hello World"

