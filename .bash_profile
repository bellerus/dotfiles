export NPM_TOKEN="b815e945-b0ae-4d77-887d-1839a4f34d77"

source ~/_/src/dotfiles/.git-prompt.sh

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
alias src="cd ~/_/src"
alias dj-app="cd ~/_/src/docjuris-app/DocJuris/ClientApp"
alias dj-kit="cd ~/_/src/docjuris-ui-kit"
alias ll='ls -la'

# git alias
alias gpum="git pull --rebase origin master"
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
alias gamm="git commit --amend --no-edit"
alias gdiff="git diff --color | diff-so-fancy"
alias gkillmerged="git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d"

# misc
alias editbash="vim ~/.bash_profile"

ulimit -n 1000
