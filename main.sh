#!/bin/sh

#* 
#* ╔══════════════════════════════════════════════════════════════════════════════════════════════════╗
#* ║                                    Imported Files                                                ║
#* ╚══════════════════════════════════════════════════════════════════════════════════════════════════╝
#* 

. ./menu.sh
. ./printer.sh
. ./utils.sh

# source ./test_code.sh
# source ./text_style.sh
# source ./menu_executor.sh
# source ./git_menu.sh

#*
#* ┏==================================================================================================┓
#* ┃                                   Start  Here...                                                 ┃
#* ┗==================================================================================================┛
#* 
  
  printHeader "                       Wellcome to NUS Shell Script"
  
  showMenusList
  # name=$(get_input "Enter your name")
  # echo "Hello, $name!"
  # success "Said hello to $name"


#*
#* ┏==================================================================================================┓
#* ┃                                        Run Test                                                  ┃
#* ┗==================================================================================================┛
#* 

# runTest

#*
#* ┏==================================================================================================┓
#* ┃                                      🧾 Example Code                                             ┃
#* ┗==================================================================================================┛
#*

# function main(){

#   showChangedFiles
#   local main_choice=-1

#   while [[ "$main_choice" != "0" ]]; do
    
#     showMainMenusList
#     read -p "$(echo -e "\n${BOLD}${GREEN}🖌   Enter your choice (1-11)${RESET} || ${BOLD}${RED}0 to Exit: ${RESET}")" main_choice
#     echo ""

# exetcute_choosen_git_operation $main_choice

#   done

#   exit 0
# }