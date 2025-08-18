#!/bin/sh

#*
#* ┏==================================================================================================┓
#* ┃                                           Text Style.                                            ┃
#* ┗==================================================================================================┛
#*

#*
#* ---> Foreground Color
#
export RED='\033[31m'
export GREEN='\033[32m'
export BLUE='\033[34m'
export YELLOW='\033[33m'
export MAGENTA='\033[35m'
export CYAN='\033[36m'
export WHITE='\033[97m'
export GOLDEN='\033[38;5;214m'
#
#* ---> Text Style
#
export BOLD='\033[1m'
export DIM='\033[2m'
export UNDERLINE='\033[4m'
export BLINK='\033[5m'
export REVERSE='\033[7m'
export STRIKETHROUGH='\033[9m'
#
#* ---> Background Color 
#
export BG_RED='\033[41m'
export BG_YELLOW='\033[43m'
export BG_BLUE='\033[44m'
export BG_MAGENTA='\033[45m'
export BG_CYAN='\033[46m'
export BG_WHITE='\033[47m'
export TEXT_COLOR='\033[1;37m'
export BG_GOLDEN='\033[48;5;214m'  # Extended color for golden background
export BG_GREEN='\033[42m'


#* Reset the style
export RESET='\033[0m'

