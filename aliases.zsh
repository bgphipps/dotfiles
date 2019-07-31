# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadcli="source $HOME/.zshrc"
# alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
# alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -ahlF --color --group-directories-first"
weather() { curl -4 wttr.in/${1:-antwerp} }
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias zbundle="antibody bundle < $DOTFILES/zsh_plugins.txt > $DOTFILES/zsh_plugins.sh"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"

# Docker
alias docker-composer="docker-compose"
alias dockerstopall="docker stop $(docker ps -a -q)"
alias dockerrmall="docker rm $(docker ps -a -q)"
#alias dstop="docker stop $(docker ps -a -q)"
#alias dpurgecontainers="dstop && docker rm $(docker ps -a -q)"
#alias dpurgeimages="docker rmi $(docker images -q)"
#dbuild() { docker build -t=$1 .; }
#dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# Consul
alias startlocalconsul='consul agent -dev --advertise 127.0.0.1'

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gd="git diff"
alias gl="git log --oneline --decorate --color"
alias gnuke="git clean -df && git reset --hard"

# Kubernetes
alias kns="kubens"

# alias fixallthegestures="killall Dock"

# Misc Util Tools
alias cat='bat'
alias help='tldr'
