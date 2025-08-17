#!/bin/sh
# menu_executor.sh

#*
#* ┏==================================================================================================┓
#* ┃                                Execute choosen Menu                                              ┃
#* ┗==================================================================================================┛
#* 


#*
#* ╔══════════════════════════════════════════════════════════════════════════════════════════════════╗
#* ║                                   💰 Imported Files                                              ║
#* ╚══════════════════════════════════════════════════════════════════════════════════════════════════╝
#*

  source ./git/git.sh
  source ./exit_script.sh

#*
#* ┏==================================================================================================┓
#* ┃                                   📖 Start  Here...                                              ┃
#* ┗==================================================================================================┛
#*

function exetcuteMenu() {
  local choice="$1"

  if [[ "$choice" =~ ^[0-9a-zA-Z]+$ ]]; then

    case $choice in
      0)
        exitScript
        ;;
      1)
        runGit
        ;;
      2)
      echo "🦋 Flutter"
        unstage_choosen_files
        ;;
      3)
      echo "💬 Comment  "
        # commit_changes
        ;;
      *)
        echo -e "${GOLDEN}Option not recognized${RESET}"
        echo ""
        ;;
    esac
  else
    echo ""
    echo -e "${RED}Invalid option. Please select a valid option.${RESET}"
    echo ""
  exit 0
  fi
}