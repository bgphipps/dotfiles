# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Random Paths
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Go Paths
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/Users/bphipps/go
export PATH=$PATH:$GOPATH/bin

# Kube Paths
export PATH=$PATH:~/.kube/plugins

# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
