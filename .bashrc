function prompt
{
    local WHITE="\[\033[1;37m\]"
    local GREEN="\[\033[0;32m\]"
    local CYAN="\[\033[0;36m\]"
    local GRAY="\[\033[0;37m\]"
    local BLUE="\[\033[0;34m\]"
    # If want to add user@host then: ${GREEN}\u${CYAN}@${BLUE}\h
    export PS1="${GREEN}$ ${CYAN}\w"' $(__git_ps1 "(%s)") '"${GRAY}"
}
prompt
 
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
alias disco="cd ~/src/Disco"
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
alias grecent="git for-each-ref --sort=-committerdate --format='%(refname:short)' refs/heads/"

ulimit -n 1000

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
