navigate_between_directories() {
    dirToMove=$(ls | fzf)
    cd "$dirToMove"
}

zle -N navigate_between_directories
bindkey '^h' navigate_between_directories
