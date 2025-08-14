#!/bin/sh
# printer.sh

source text_style.sh


# Get terminal width
TERM_WIDTH=$(tput cols 2>/dev/null || echo 80)  # fallback to 80 if tput fails

# Function to print full-width background lines
print_full_bg() {
    fg="$1"
    bg="$2"
    shift 2
    for line in "$@"; do
        # Pad line with spaces to fill terminal width
        line_length=${#line}
        pad=$((TERM_WIDTH - line_length))
        if [ "$pad" -lt 0 ]; then pad=0; fi
        printf "${fg}${bg}%s%*s${NC}\n" "$line" "$pad" ""
    done
}

# Example usage
print_full_bg "$GREEN" "$BG_BLUE" "Line 1: Hello" "Line 2: Welcome"
print_full_bg "$YELLOW" "$BG_RED" "Line 3: This is colorful" "Line 4: Enjoy!"
print_full_bg "$BLUE" "$BG_YELLOW" "Line 5: Goodbye"
