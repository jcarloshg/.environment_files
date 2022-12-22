# ==========
# git
# ============
# alias ga="git add ."
# alias gc="git commit"
alias gp="git push"
alias gs="git status"
alias gd="git diff"

function gcommit {

    echo "${JUMPLINE} > executing...    ${MAGENTA}git add ."
    git add .
    NCOLOR

    if [ -z "$1" ]; then
        echo "${JUMPLINE} > executed...     ${MAGENTA}git commit"
        git commit
    else
        echo "${JUMPLINE} > executed...     ${MAGENTA}git commit -m $1"
        git commit -m "$1"
    fi

    NCOLOR

}

echo "\n LOADED git.sh"
