function codeNIKUne {

    route="$HOME/Documentos/chamba/niku_negocioEmpleado"

    echo "${JUMPLINE} > executing...    ${MAGENTA}[     ${RED}cd ${MAGENTA}${route}     ]"
    NCOLOR
    cd "${route}"

    echo "${JUMPLINE} > executing...    ${MAGENTA}[     ${RED}code ${MAGENTA}${route}   ]"
    NCOLOR
    code "${route}"
}
