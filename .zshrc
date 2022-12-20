
# ============================================
# my config
# ============================================

echo "do it for her..."

alias sudo="sudo "
alias ll="ls -l"
alias la="ls -la"


alias cds="cd $HOME/Documentos/school/"
alias cdc="cd $HOME/Documentos/chamba/"
alias cda="cd $HOME/Documentos/SANDBOX/"

alias codeNIKUmb="code $HOME/Documentos/chamba/niku_marketingBackend"
alias codeNIKUne="code $HOME/Documentos/chamba/niku_negocioEmpleado"

alias codeFLOKYa="code $HOME/Documentos/school/tesis/Floky"
alias cdFLOKYa="cd $HOME/Documentos/school/tesis/Floky"
alias codeFLOKYt="code $HOME/Documentos/school/tesis/FlokyTutor"
alias cdFLOKYt="cd $HOME/Documentos/school/tesis/FlokyTutor"

# ==========
# git
# ============
# alias ga="git add ."
# alias gc="git commit"
alias gp="git push"
alias gs="git status"
alias gd="git diff"


RED='\033[0;31m'
MAGENTA='\033[0;35m'
JUMPLINE='\n'
NC='\033[0m' # No Color
BOLD=$(tput bold)
NORM=$(tput sgr0)

function ppp {
    echo "${JUMPLINE} > executed  ${MAGENTA}git add ."
}

function NCOLOR { echo "${NC}" }

function gic {

    git add .
    echo "${JUMPLINE} > executed  ${MAGENTA}git add ."

    NCOLOR

    if [ -z "$1" ]; then
        git commit
        echo "${JUMPLINE} > executed  ${MAGENTA}git commit"
    else
        git commit -m "$1"
        echo "${JUMPLINE} > executed  ${MAGENTA}git commit -m $1"
    fi

    NCOLOR

}


# ============================================
# my from oh-my-zsh
# ============================================


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# ADD PATH FLUTTER
export PATH="$PATH:/home/jose/.INPORTANT_FILES/flutter/bin"

# ADD PATH REACT_NATIVE
export ANDROID_SDK_ROOT=/home/jose/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
export LAMBDA_MOD_N_DIR_LEVELS=10
ZSH_THEME="lambda-mod-zsh-theme/lambda-mod"

# ZSH_THEME="spaceship-prompt/spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

# Load Angular CLI autocompletion.
source <(ng completion script)
