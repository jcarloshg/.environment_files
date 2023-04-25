
function codePescadata {

    # /home/jose/Documentos/kokonut/pesca_data/Pescadata-Dashboard
    route="$HOME/Documentos/kokonut/pesca_data/Pescadata-Dashboard"

    echo "${JUMPLINE} > executing...    ${MAGENTA}[     ${RED}cd ${MAGENTA}${route}     ]"
    NCOLOR
    cd "${route}"

    echo "${JUMPLINE} > executing...    ${MAGENTA}[     ${RED}code ${MAGENTA}${route}   ]"
    NCOLOR
    code "${route}"
}