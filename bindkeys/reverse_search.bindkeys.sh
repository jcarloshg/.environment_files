_reverse_search() {
    # selectCommand=$(fc -rl 1 | awk '{$1="";print substr($0,2)}' | sort --unique | fzf)
    selectCommand=$(fc -rln 1 | sort --unique | fzf)
    LBUFFER=$selectCommand
}
zle -N _reverse_search
bindkey '^j' _reverse_search
