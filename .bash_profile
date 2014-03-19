# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


grepSearch() {
    #do things with parameters like $1 such as
    grep -rn --color $1 $2
}

alias search=grepSearch

# Alias
alias bashreload=". ~/.bash_profile"
alias stratus="cd ~/_source/stratus/ui"
alias sc="cd ~/_source"
alias ll='ls -la'
alias g='grunt'
alias gss='grunt css'

# git alias
alias gpum="git pull --rebase upstream master"
alias gpom="git push origin master"
alias gco="git checkout"
alias gbl="git branch -l"
alias gst="git status"
alias gplog="git log --oneline"
alias greb="git rebase -i"
alias gser="git server"
alias gyes="git yesterday"
alias gcount="git rev-list --count HEAD ^master"
alias gcommit="git for-each-ref --sort=-committerdate refs/heads/"

ulimit -n 1000

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
