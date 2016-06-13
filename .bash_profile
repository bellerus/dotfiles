export JAVA_HOME=$(/usr/libexec/java_home)
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

grepSearch() {
    #do things with parameters like $1 such as
    grep -rn --color $1 $2
}

alias search=grepSearch

# Alias
alias bashreload=". ~/.bash_profile"
alias src="cd ~/src"
alias func="cd ~/src/disco-functional-tests"
alias ll='ls -la'

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
alias grecent="git for-each-ref --sort=-committerdate --format='%(refname:short)' refs/heads/"

ulimit -n 1000
