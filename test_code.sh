#!/bin/sh


#*
#* ╔══════════════════════════════════════════════════════════════════════════════════════════════════╗
#* ║                                   💰 Imported Files                                              ║
#* ╚══════════════════════════════════════════════════════════════════════════════════════════════════╝
#*

. ./text_style.sh
. ./printer.sh

#*
#* ┏==================================================================================================┓
#* ┃                                   📖 Start  Here...                                              ┃
#* ┗==================================================================================================┛
#*

# === Terminal width ===
TERM_WIDTH=$(tput cols 2>/dev/null || echo 80)

# === Visible length calculation (fix for emoji width) ===
visible_length() {
    # Strip color codes, count characters
    printf "%s" "$1" | sed 's/\x1B\[[0-9;]*[A-Za-z]//g' | awk '{print length}'
}

print() {
    for line in "$@"; do
        line_length=$(visible_length "$line")
        pad=$((TERM_WIDTH - line_length))
        [ "$pad" -lt 0 ] && pad=0
        printf "${BOLD}${FG_WHITE}${BG_BLUE}%s%*s${RESET}\n" "$line" "$pad" ""
    done
}

print "Line 1: Hello" "Line 2: Welcome" "Line 3: Goodbye"


# === Header ===
print_header() {
    title="$1"
    line=$(printf "%${TERM_WIDTH}s" | tr ' ' '=')
    print "$line"
    print "$title"
    print "$line"
}

print_header " 🧾 Wellcome to Shell Script"