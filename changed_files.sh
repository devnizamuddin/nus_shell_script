#*
#* ┏==================================================================================================┓
#* ┃  Objective : Show all untracked, unstaged, staged files                                          ┃
#* ┃--------------------------------------------------------------------------------------------------┃
#* ┃  Input     : none                                                                                ┃
#* ┃  Output    : untrackedFiles, unstagedFiles, stagedFiles                                          ┃
#* ┗==================================================================================================┛
#*

function showChangedFiles(){
echo ""

# Get staged, unstaged, and untracked files
staged_files=$(git diff --name-only --cached)
unstaged_files=$(git diff --name-only)
untracked_files=$(git ls-files --others --exclude-standard)  # Show new files

# Display Staged Files (Already Staged)
echo -e "${BOLD}${CYAN}✅ Staged files (Already added):${RESET}"
echo -e "${BOLD}${CYAN}═════════════════════════════════════════════════════════════════════${RESET}"
echo ""

staged_list=()

if [[ -z "$staged_files" ]]; then
    echo -e "${YELLOW}  No staged files.${RESET}"
else
    i=1
    for file in $staged_files; do
        echo -e "${GREEN}  $i. $file${RESET}"
        echo ""
        staged_list+=("$file")
        ((i++))
    done
fi
echo ""

# Display Unstaged Files (Modified but not staged)
echo -e "${BOLD}${CYAN}⚠️  Unstaged files (Modified but not staged):${RESET}"
echo -e "${BOLD}${CYAN}═════════════════════════════════════════════════════════════════════${RESET}"
echo ""
unstaged_list=()
i=1
if [[ -n "$unstaged_files" ]]; then
    for file in $unstaged_files; do
        echo -e "${BOLD}${WHITE}  $i. $file${RESET}"
        echo ""
        unstaged_list+=("$file")
        ((i++))
    done
else
    echo -e "${YELLOW}  No unstaged files.${RESET}"
fi
echo ""

# Display Untracked Files (New files)
echo -e "${BOLD}${CYAN}🆕 Untracked files (Not in Git yet):${RESET}"
echo -e "${BOLD}${CYAN}═════════════════════════════════════════════════════════════════════${RESET}"
echo ""

if [[ -n "$untracked_files" ]]; then
    for file in $untracked_files; do
        echo -e "${WHITE}  $i. $file${RESET}"
        echo ""
        unstaged_list+=("$file")
        ((i++))
    done
else
    echo -e "${YELLOW}  No untracked files.${RESET}"
fi
echo ""

}

