parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function prompt_left() {
  echo -e "\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
}

function prompt_right() {
  echo -e "\033[0;35m $(parse_git_branch) \033[0m"
}

function prompt() {
    compensate=11
    export PS1=$(printf "%*s\r%s\n\$ " "$(($(tput cols)+${compensate}))" "$(prompt_right)" "$(prompt_left)")
}

PROMPT_COMMAND=prompt
