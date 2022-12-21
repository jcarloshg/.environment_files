# ============================================
# important
# ============================================

# ADD PATH FLUTTER
export PATH="$PATH:/home/jose/.INPORTANT_FILES/flutter/bin"

# ADD PATH REACT_NATIVE
export ANDROID_SDK_ROOT=/home/jose/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# ADD PATH ANGULAR_CLI -> Load Angular CLI autocompletion.
source <(ng completion script)

# ============================================
# my config
# ============================================

echo "do it for her..."

source $HOME/.environment_files/alias.sh
source $HOME/.environment_files/git/git.sh
source $HOME/.environment_files/PROMPT/prompt.index.sh

_display_message() {
    dirToMove=$(ls | fzf)
    cd "$dirToMove"
}
zle -N _display_message
bindkey '^h' _display_message

_reverse_search() {
    # selectCommand=$(fc -rl 1 | awk '{$1="";print substr($0,2)}' | sort --unique | fzf)
    selectCommand=$(fc -rln 1 | sort --unique | fzf)
    LBUFFER=$selectCommand
}
zle -N _reverse_search
bindkey '^j' _reverse_search

# ============================================
# my from oh-my-zsh
# ============================================

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
export LAMBDA_MOD_N_DIR_LEVELS=10
ZSH_THEME="lambda-mod-zsh-theme/lambda-mod"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

eval "$(starship init zsh)"
