function run-kokonut-pescadata {

    route="$HOME/Documentos/kokonut/Pescadata-Dashboard"
    cd "${route}"

    # ============================================================
    # OPENS VCODE
    # ============================================================
    # sleep 3 &
    code .
    # wait

    # vcodeWindowName="GCC_Web"
    # vcodeName="Visual Studio Code"
    # vcodeWorkSpace=1
    # move-window $vcodeName $vcodeWindowName $vcodeWorkSpace

    # ============================================================
    # OPENS CHROME
    # ============================================================
    # sleep 3 &
    google-chrome --profile-directory="Profile 3" --new-window http://localhost:4200/ --incognito
    # wait
    # chromeWindowName="localhost"
    # chromeName="Google Chrome"
    # chromeWorkSpace=3
    # move-window $chromeWindowName $chromeName $chromeWorkSpace

    # ============================================================
    # RUNS PROJECT
    # ============================================================
    nvm use v16.20.2
    ng serve

}
