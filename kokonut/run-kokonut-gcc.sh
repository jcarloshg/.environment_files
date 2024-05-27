function run-kokonut-gcc {

    route="$HOME/Documentos/kokonut/GCC/GCC_Web"
    cd "${route}"

    # ============================================================
    # OPENS VCODE
    # ============================================================
    sleep 3 &
    code .
    wait

    vcodeWindowName="GCC_Web"
    vcodeName="Visual Studio Code"
    vcodeWorkSpace=1
    move-window $vcodeName $vcodeWindowName $vcodeWorkSpace

    # ============================================================
    # OPENS CHROME
    # ============================================================
    sleep 3 &
    google-chrome --profile-directory="Profile 3" --new-window http://localhost:4200/ --incognito
    wait
    chromeWindowName="localhost"
    chromeName="Google Chrome"
    chromeWorkSpace=3
    move-window $chromeWindowName $chromeName $chromeWorkSpace

    # ============================================================
    # RUNS PROJECT
    # ============================================================
    nvm use v18.19.0
    npm run dev

}
