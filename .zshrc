export DOTFILES="$HOME/.dotfiles"

# Antibody
ANTIBODY_HOME="$(antibody home)"
DISABLE_AUTO_UPDATE=true
# export ZSH="$HOME/Library/Caches/antibody/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
export ZSH="$ANTIBODY_HOME"/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh
# source $DOTFILES/zsh_plugins.sh
source <(antibody init)
antibody bundle < $DOTFILES/zsh_plugins.txt
ZSH_THEME=""

# Define RobbyRussel theme here since it doesn't seem to work through 
# antibody
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# FASD setup
eval "$(fasd --init auto)"

# Theme
export MNML_INSERT_CHAR="$"
export MNML_PROMPT=(mnml_git mnml_keymap)
export MNML_RPROMPT=('mnml_cwd 20')

# Dotfiles
source $DOTFILES/path.zsh
source $DOTFILES/aliases.zsh
source $DOTFILES/functions.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
