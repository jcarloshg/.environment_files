
function codeRecorridoKeken {

    route="$HOME/Documentos/kokonut/keken/recorrido_virtual_keken"

    echo "${JUMPLINE} > executing...    ${MAGENTA}[     ${RED}cd ${MAGENTA}${route}     ]"
    NCOLOR
    cd "${route}"

    echo "${JUMPLINE} > executing...    ${MAGENTA}[     ${RED}code ${MAGENTA}${route}   ]"
    NCOLOR
    code "${route}"
}