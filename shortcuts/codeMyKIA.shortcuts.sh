function codeMyKIA {

    # /home/jose/Documentos/kokonut/MyKIA_Web
    route="$HOME/Documentos/kokonut/MyKIA_Web"

    echo "${JUMPLINE} > executing...    ${MAGENTA}[     ${RED}cd ${MAGENTA}${route}     ]"
    NCOLOR
    cd "${route}"

    echo "${JUMPLINE} > executing...    ${MAGENTA}[     ${RED}code ${MAGENTA}${route}   ]"
    NCOLOR
    code "${route}"
}
