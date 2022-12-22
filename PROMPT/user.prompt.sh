function exit_code() {
    local EXIT="$?"

    if [ $EXIT -eq 0 ]; then
        echo -n green
    else
        echo -n red
    fi
}

username='%{%F{$(exit_code)}%}%n%{%f%}'
