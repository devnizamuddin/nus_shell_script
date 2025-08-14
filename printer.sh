#!/bin/sh
# printer.sh


#*
#* ╔══════════════════════════════════════════════════════════════════════════════════════════════════╗
#* ║                                   💰 Imported Files                                              ║
#* ╚══════════════════════════════════════════════════════════════════════════════════════════════════╝
#*

source ./text_style.sh

#*
#* ┏==================================================================================================┓
#* ┃  📖 Start  Here...                                                                               ┃
#* ┗==================================================================================================┛
#*



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
print_full_bg "$WHITE" "$BG_GREEN" "Line 1: Hello" "Line 2: Welcome"
print_full_bg "" "$BG_RED" "Line 3: Background only"  # default text color
print_full_bg "$BLUE" "" "Line 4: Foreground only"     # default background
print_full_bg "" "" "Line 5: Default colors"           # no colors


}

