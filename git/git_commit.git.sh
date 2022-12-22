function gcommit {

    echo "${JUMPLINE} > executing...    ${MAGENTA}git add ."
    git add .
    NCOLOR

    if [ -z "$1" ]; then
        echo "${JUMPLINE} > executing...     ${MAGENTA}git commit"
        NCOLOR
        git commit
    else
        echo "${JUMPLINE} > executing...     ${MAGENTA}git commit -m $1"
        NCOLOR
        git commit -m "$1"
    fi

}
