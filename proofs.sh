# hola=$(wmctrl -l | grep "Visual Studio Code" | grep "GCC_Web")
# # Use read to bash split string into array
# read -ra myvar <<<"$hola"
# echo $myvar
# wmctrl -r $myvar -t 5 -i

#!/bin/bash
# sleep 10 &
# echo "Command running in background..."
# wait
# echo "Command has completed!"

while true; do
    google-chrome --profile-directory="Profile 3" --new-window http://localhost:4200/ --incognito &
    PID=$!
    CPID=ps --ppid $PID | tail -1 | cut -f1 -d" "
    wait $CPID
done
