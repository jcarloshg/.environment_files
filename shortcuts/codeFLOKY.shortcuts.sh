function codeFLOKY {

    route="$HOME/Documentos/school/tesis/Floky"

    echo "${JUMPLINE} > executing...    ${MAGENTA}[     ${RED}cd ${MAGENTA}${route}     ]"
    NCOLOR
    cd "${route}"

    echo "${JUMPLINE} > executing...    ${MAGENTA}[     ${RED}code ${MAGENTA}${route}   ]"
    NCOLOR
    code "${route}"
}
