#!/bin/sh

# test_code.sh

#*
#* ╔══════════════════════════════════════════════════════════════════════════════════════════════════╗
#* ║                                   💰 Imported Files                                              ║
#* ╚══════════════════════════════════════════════════════════════════════════════════════════════════╝
#*

source ./printer.sh


#*
#* ┏==================================================================================================┓
#* ┃                                      🧾 Example Code                                             ┃
#* ┗==================================================================================================┛
#*


#*
#* ✌️ Import Files Example
#*
# source ./text_style.sh


#*
#* ✌️ Run File Example
#*

# source text_style.sh

#*
#* ┏==================================================================================================┓
#* ┃                                  📖 Start  Here...                                               ┃
#* ┗==================================================================================================┛
#*



#* ✌️ Define some colors

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

BG_BLUE='\033[44m'
BG_RED='\033[41m'
BG_YELLOW='\033[43m'

# Get terminal width
TERM_WIDTH=$(tput cols 2>/dev/null || echo 80)

# Function to print full-width lines with optional colors
print_full_bg() {
    fg="$1"
    bg="$2"
    shift 2
    
    # Use default if no color is provided
    [ -z "$fg" ] && fg=""
    [ -z "$bg" ] && bg=""
    
    for line in "$@"; do
        line_length=${#line}
        pad=$((TERM_WIDTH - line_length))
        [ "$pad" -lt 0 ] && pad=0
        printf "${fg}${bg}%s%*s${NC}\n" "$line" "$pad" ""
    done
}



function runTest(){

# Example usage
print_full_bg "$GREEN" "$BG_BLUE" "Line 1: Hello" "Line 2: Welcome"
print_full_bg "" "$BG_RED" "Line 3: Background only"  # default text color
print_full_bg "$BLUE" "" "Line 4: Foreground only"     # default background
print_full_bg "" "" "Line 5: Default colors"           # no colors


}

