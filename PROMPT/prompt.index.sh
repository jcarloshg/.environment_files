setopt PROMPT_SUBST # activate substitute from prompt by functions

source "$HOME/.environment_files/PROMPT/user.prompt.sh"
source "$HOME/.environment_files/PROMPT/github.prompt.sh"

PROMPT="${username_prompt}@%d${git_prompt}:"

RPROMPT="%T"
