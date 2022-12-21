setopt PROMPT_SUBST

function _exit_code() {
    local EXIT="$?"

    if [ $EXIT -eq 0 ]; then
        echo -n green
    else
        echo -n red
    fi
}

# PROMPT='$(_exit_code)%n @ %d: '
# PROMPT='%{%F{$(_exit_code)}%}%n%{%f%S}% @ %d: '
PROMPT='%n@%d: '
