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
         exit_script
        ;;
      1)
        stage_choosen_files
        ;;
      1a)
        stage_all_files
        ;;
      2)
        unstage_choosen_files
        ;;
      2a)
        unstage_All_changed_file
        ;;
      3)
        commit_changes
        ;;
      3p)
        commit_and_push
        ;;
      4)
        pull_and_push
        ;;
      4m)
        merge_branch
        ;;
      5)
        git_diff_branches
        ;;
      6)
        git_log
        ;;
      7)
        show_commit_changes
        ;;
      8s)
        git_soft_reset
        ;;
      8h)
        git_hard_reset
        ;;
      9)
        utilitiesTask
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