print_text() {
    # \033[37;44m → White text (37) on Blue background (44)
    # \033[0m → Reset to default colors at the end
echo -e "\033[37;44m


Line 1: Hello
Line 2: Welcome to the script
Line 3: Goodbye

\033[0m
"
}

print_text

