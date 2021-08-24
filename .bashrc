export CLICOLOR=TRUE
export LSCOLORS=Gxfxbxdxcxegedabagacad

# CUSTOM FUNCTIONS HERE
function cw() {
    cd $*;
    ls -F;
}

function mcd()
{
    mkdir $@;
    cd $1;
}

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'                                                                                                                                                                                                                                                                                    
alias cl='clear'
alias hlog='git log --date-order --all --graph --format="%C(green)%h %Creset%C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset %s"'
alias xlog='git log --date-order --graph --format="%C(green)%h %Creset%C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset %s"'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

alias gw="./gradlew"
