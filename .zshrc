# ============================================
# IMPORTANT 👿
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
# OH MY ZSH 😁
# ============================================

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
export LAMBDA_MOD_N_DIR_LEVELS=10
ZSH_THEME="lambda-mod-zsh-theme/lambda-mod"

# plugins=(git)
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

eval "$(starship init zsh)"

# ============================================
# MY CONFIG 😀
# ============================================
source $HOME/.environment_files/index.sh
