#!/bin/sh

#* 
#* ╔══════════════════════════════════════════════════════════════════════════════════════════════════╗
#* ║                                    Imported Files                                                ║
#* ╚══════════════════════════════════════════════════════════════════════════════════════════════════╝
#* 

. ./printer.sh #* Printing
. ./utils.sh #* Log
. ./menu.sh #* Show Menu
. ./menu_executor.sh #* Execute Menu

#*
#* ┏==================================================================================================┓
#* ┃                                   Start  Here...                                                 ┃
#* ┗==================================================================================================┛
#* 
  #* Showing App Header
  printHeader "                       Wellcome to NUS Shell Script"
  
  #* Log app starting
  log "Application started"

  #* Show Feature List
  showMenusList

  read -p "$(echo "\n${BOLD}${GREEN}🖌   Enter your choice (1-3)${RESET} || ${BOLD}${RED}0 to Exit: ${RESET}")" choice

  exetcuteMenu "$choice"