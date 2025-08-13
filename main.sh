#!/bin/bash

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

#*
#* ┏==================================================================================================┓
#* ┃                                Imports of this file                                              ┃
#* ┗==================================================================================================┛
#* 

source ./changed_files.sh
source ./menu.sh
source ./text_style.sh



#*
#* ┏==================================================================================================┓
#* ┃                                Start code from here                                              ┃
#* ┗==================================================================================================┛
#* 

function main(){

  showChangedFiles
  local main_choice=-1

  while [[ "$main_choice" != "0" ]]; do
    
    showMenusList
    read -p "$(echo -e "\n${BOLD}${GREEN}🖌   Enter your choice (1-11)${RESET} || ${BOLD}${RED}0 to Exit: ${RESET}")" main_choice
    echo ""

    # exetcute_choosen_git_operation $main_choice

  done

  exit 0
}

main