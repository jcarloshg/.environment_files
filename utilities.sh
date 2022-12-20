
RED='\033[0;31m'
MAGENTA='\033[0;35m'

JUMPLINE='\n'
BOLD=$(tput bold)
NORM=$(tput sgr0)

function NCOLOR {
    NC='\033[0m' # No Color
    echo "${NC}"
}
