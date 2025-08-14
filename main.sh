#!/bin/sh

#* ╔═══════════════════════════════════════════════════════════════╗
#* ║                                                               ║
#* ║ 🧠 Purpose   : Main file of the Project                       ║
#* ║                                                               ║
#* ║ 🙎‍♂️ Author    : Nizam Uddin Shamrat                            ║
#* ║                                                               ║
#* ║ 📧 Email     : dev.nizamuddin@gmail.com                       ║
#* ║                                                               ║
#* ║ 🌍 Portfolio : https://devnizamuddin.github.io                ║
#* ║                                                               ║
#* ║ 🗓️ Date      : 13 August 2025        🕰 Time : 02:51 PM       ║
#* ║                                                               ║
#* ╚═══════════════════════════════════════════════════════════════╝

# function main(){

#   showChangedFiles
#   local main_choice=-1

#   while [[ "$main_choice" != "0" ]]; do
    
#     showMainMenusList
#     read -p "$(echo -e "\n${BOLD}${GREEN}🖌   Enter your choice (1-11)${RESET} || ${BOLD}${RED}0 to Exit: ${RESET}")" main_choice
#     echo ""

#     # exetcute_choosen_git_operation $main_choice

#   done

#   exit 0
# }

#* 
#* ╔══════════════════════════════════════════════════════════════════════════════════════════════════╗
#* ║                                    Imported Files                                                ║
#* ╚══════════════════════════════════════════════════════════════════════════════════════════════════╝
#* 


source ./menu.sh
source ./printer.sh
source ./test_code.sh
# source ./text_style.sh
# source ./menu_executor.sh
# source ./git_menu.sh


#*
#* ┏==================================================================================================┓
#* ┃                                   Start  Here...                                                 ┃
#* ┗==================================================================================================┛
#* 

function runApp(){

  showMenusList

  # local choice
  # read -p "$(echo -e "\n${BOLD}${GREEN}🖌   Enter your choice${RESET} || ${BOLD}${RED}0 to Exit: ${RESET}")" choice
  
  # exetcuteMenu $choice


}

#*
#* ┏==================================================================================================┓
#* ┃                                        Run App                                                   ┃
#* ┗==================================================================================================┛
#* 

# runApp

#*
#* ┏==================================================================================================┓
#* ┃                                        Run Test                                                  ┃
#* ┗==================================================================================================┛
#* 

runTest
