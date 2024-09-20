function get_exit_code_color() {
    local EXIT="$?"

    if [ $EXIT -eq 0 ]; then
        echo -n green
    else
        echo -n red
    fi
}

exit_code_color=$(get_exit_code_color)
username='%n'

username_prompt='%{%F{${exit_code_color}}%}${username}%{%f%}'
