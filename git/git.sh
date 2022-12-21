
# ==========
# git
# ============
# alias ga="git add ."
# alias gc="git commit"
alias gp="git push"
alias gs="git status"
alias gd="git diff"


function gcommit {

    git add .
    echo "${JUMPLINE} > executed  ${MAGENTA}git add ."

    NCOLOR

    if [ -z "$1" ]; then
        git commit
        echo "${JUMPLINE} > executed  ${MAGENTA}git commit"
    else
        git commit -m "$1"
        echo "${JUMPLINE} > executed  ${MAGENTA}git commit -m $1"
    fi

    NCOLOR

}

echo "\n LOADED git.sh"