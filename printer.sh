#!/bin/sh
# printer.sh

#*
#* ┏==================================================================================================┓
#* ┃                                      🧾 Example Code                                             ┃
#* ┗==================================================================================================┛
#*

#* Default Print

# TERM_WIDTH=$(tput cols 2>/dev/null || echo 80)
# print() {
#     for line in "$@"; do
#          Calculate padding
#         line_length=$(echo "$line" | wc -c)
#         pad=$((TERM_WIDTH - line_length))
#         [ "$pad" -lt 0 ] && pad=0
#          Print line with background color
#         printf "${TEXT_COLOR}${BG_GREEN}%s%*s${NC}\n" "$line" "$pad" ""
#     done
# }

# Example usage
# print "Line 1: Hello" "Line 2: Welcome" "Line 3: Goodbye"

#* Printing Header

# print_header() {
#     local title="$1"
#     print "========================================"
#     print "$title"
#     print "========================================"
# }

# Example usage
# print_header "Wellcome to Shell Script"

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


# Get terminal width (fallback to 80 if not available)
TERM_WIDTH=$(tput cols 2>/dev/null || echo 80)

# Function to print full-width text with white on green
function print() {
    for line in "$@"; do
        # Calculate padding
        line_length=$(echo "$line" | wc -c)
        pad=$((TERM_WIDTH - line_length))
        [ "$pad" -lt 0 ] && pad=0
        # Print line with background color
        printf "${TEXT_COLOR}${BG_GREEN} %s%*s${NC}\n" "$line" "$pad" ""
    done
}

print_header() {
    local title="$1"
    # You can add top and bottom padding or separators
    print "========================================"
    print "$title"
    print "========================================"
}
