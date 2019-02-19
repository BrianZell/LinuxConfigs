set -o vi
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'


source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true

export OPENSTACK_USERNAME=sltcldadm
export OPENSTACK_PASSWORD=gumexe5U5raP
export ANDROID_HOME=/Users/bzell/Library/Android/sdk

turquoise=$(tput setaf 6)
reset=$(tput sgr0)
export PS1='[\u@\h]\W\[$turquoise\]$(__git_ps1)\[$reset\]\$ '
#export PS1="[\[\033[01;32m\]\u\[\033[0m\]@\[\033[01;214m\]\h\[\033[0m\]]\W\[$turquoise\]$(__git_ps1)\[\033[0m\]\$ "

#docker
eval "$(docker-machine env default)"
dockervm-ip() {
  docker-machine ip
}

#gradle and puppet
#export PATH="/opt/puppetlabs/bin:/Library/Gradle/gradle-2.5/bin:$PATH"
export PATH="/Users/bzell/Library/Android/sdk/platform-tools:/Users/bzell/Library/Android/sdk/tools:$PATH"

#golang
export GOPATH=$HOME/go-workspace
export GOROOT=/usr/local/opt/go/libexec
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
