#!/bin/bash

#*
#* ╔══════════════════════════════════════════════════════════════════════════════════════════════════╗
#* ║                                   💰 Imported Files                                              ║
#* ╚══════════════════════════════════════════════════════════════════════════════════════════════════╝
#*

. ./text_style.sh
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
BG_GOLDEN='\033[48;5;214m'  # Extended color for golden background
BG_GREEN='\033[42m'

BG_BLUE_GREY="\033[48;5;67m" 

#* Reset the style
RESET='\033[0m'
NC='\033[0m'


echo -e "${BG_BLUE_GREY}${WHITE} Hello World${RESET}"

#!/bin/sh

RESET="\033[0m"
BOLD="\033[1m"
FG_WHITE="\033[97m"
BG_BLUEGREY="\033[48;2;96;125;139m"   # Blue Grey (RGB)

printHeader() {
    title="$1"
    width=80

    # count characters (not bytes)
    title_length=$(printf "%s" "$title" | wc -m)

    # ⚠️ adjustment: some emoji take 2 cells, so rough fix
    # যদি title এ emoji থাকে, ধরে নিলাম প্রতিটি emoji 2 width
    emoji_count=$(printf "%s" "$title" | grep -o "🐙" | wc -l)
    title_length=$(( title_length + emoji_count ))

    padding=$(( (width - title_length) / 2 ))
    [ $padding -lt 0 ] && padding=0

    # top border
    printf "${BG_BLUEGREY}%${width}s${RESET}\n" "" | tr ' ' '='

    # centered title
    printf "${BG_BLUEGREY}${BOLD}${FG_WHITE}%*s%s%*s${RESET}\n" \
        "$padding" "" "$title" "$padding" ""

    # bottom border
    printf "${BG_BLUEGREY}%${width}s${RESET}\n" "" | tr ' ' '='
}

# Example
printHeader "🐙 Welcome to My Script"


printHeader "🐙 Welcome to My Script    "