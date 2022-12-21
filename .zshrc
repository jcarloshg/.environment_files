
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

setopt PROMPT_SUBST
PROMPT='%n @ %d: '

echo "do it for her..."

source $HOME/.environment_files/alias.sh
source $HOME/.environment_files/git/git.sh

_display_message() {
    dirToMove=$(ls | fzf)
    cd "$dirToMove"
}
zle     -N      _display_message
bindkey '^h'    _display_message

_reverse_search() {
    # selectCommant=$(fc -rl 1 | awk '{$1="";print substr($0,2)}' | fzf)
    # echo -n $selectCommant | setopt hist_ignore_all_dups # no duplicate
    selectCommant=$(fc -rln 1 | fzf)
    echo -n "$selectCommant"
}
zle     -N      _reverse_search
bindkey '^j'    _reverse_search




# ============================================
# my from oh-my-zsh
# ============================================
