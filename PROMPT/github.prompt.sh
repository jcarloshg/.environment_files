function git_info {
    is_inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"

    if [ "$is_inside_git_repo" ]; then
        current_branch=$(git branch --show-current)
        print -P " on %{%F{yellow}%}${current_branch}%{%f%}"
    else
        echo ""
    fi

}

git_prompt='$(git_info)'
