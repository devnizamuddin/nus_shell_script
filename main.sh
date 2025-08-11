
#*
#* ┏==================================================================================================┓
#* ┃                                      Main Function                                               ┃
#* ┗==================================================================================================┛
#*


#* Example
#* Run another file from main file

# source "test.sh"

showAllFileChangesAsNumberedList

  local main_choice=-1

  while [[ "$main_choice" != "0" ]]; do
    
    show_options

    read -p "$(echo -e "\n${BOLD}${GREEN}🖌   Enter your choice (1-11)${RESET} || ${BOLD}${RED}0 to Exit: ${RESET}")" main_choice
    echo ""

    exetcute_choosen_git_operation $main_choice

  done

  exit 0