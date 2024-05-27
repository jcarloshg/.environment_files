# $1 -> project name
# $2 -> window name
# $3 -> work space

function move-window {

    window=$(wmctrl -l | grep $1 | grep $2)
    # echo $window

    # Use read to bash split string into array
    read -r myvar <<<"$window"
    # echo $myvar

    wmctrl -r $myvar -t $3 -i
}
