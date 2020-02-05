# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Random Paths
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Go Paths
# Go development
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
# Go module proxy ignore fanatics packages
export GONOPROXY="*.fanatics.corp,*.frg.tech"
export GONOSUMDB="*.fanatics.corp,*.frg.tech"
export GOPRIVATE="*.fanatics.corp,*.frg.tech"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="$PATH:${HOME}/git/forge/go-build-scripts/modules"

# Kube Paths
export PATH=$PATH:~/.kube/plugins

# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
