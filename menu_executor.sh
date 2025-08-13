#*
#* ┏==================================================================================================┓
#* ┃                                Execute choosen Menu                                              ┃
#* ┗==================================================================================================┛
#* 

#* Imports

source ./git/git.sh

#* Functionalities of this file.


function exetcuteMenu() {
  local choice="$1"

  if [[ "$choice" =~ ^[0-9a-zA-Z]+$ ]]; then

    case $choice in
      0)
        runGit
        ;;
      1)
      echo "🐙 Git"
        # stage_choosen_files
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