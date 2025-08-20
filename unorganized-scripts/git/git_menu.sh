#*
#* ┏==================================================================================================┓
#* ┃                          Provide options to choose → Git Actions                                 ┃
#* ┗==================================================================================================┛
#* 

function showGitMenusList(){
    echo -e "${BOLD}${BG_BLUE}                                                                                                           ${RESET}"
    echo -e "${BOLD}${BG_BLUE}                                     ╔══════════════════════════════╗                                      ${RESET}"
    echo -e "${BOLD}${BG_BLUE}                                     ║                              ║                                      ${RESET}"
    echo -e "${BOLD}${BG_BLUE}                                     ║   Select An Operation 👨‍💻   ║                                      ${RESET}"
    echo -e "${BOLD}${BG_BLUE}                                     ║                              ║                                      ${RESET}"
    echo -e "${BOLD}${BG_BLUE}                                     ╚══════════════════════════════╝                                      ${RESET}"
    echo -e "${BOLD}${BG_BLUE}                                                                                                           ${RESET}"
    echo ""
    echo ""
    echo ""
    echo "1 → Stage (1a → All)                        2 → UnStage (2a → All)"
    echo ""
    echo "3 → Commit (3p → & Push)                    4 → Pull & Push (4m → Merge)"
    echo ""
    echo "5 → Show difference                         6 → Commit History "
    echo ""
    echo "7 → Show Commit Changes                     8 → Reset((soft-s)/(hard-h))"
    echo ""
    echo -e "9 → Open ${BOLD}${MAGENTA} ➤  Utility Functionalities${RESET}"
    echo ""
    echo ""
}

