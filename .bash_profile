export JAVA_HOME=$(/usr/libexec/java_home)

source ~/.git-prompt.sh

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
alias disco="cd ~/src/disco-app/CasiLabs.Disco.WebUi/client"
alias orgs="cd ~/src/disco-app/CasiLabs.Disco.WebUi/client/apps/organizations"
alias apps="cd ~/src/disco-app/CasiLabs.Disco.WebUi/client/apps"
alias appr="cd ~/src/disco-app/CasiLabs.Disco.WebUi/client/apps/root"
alias bundler="cd ~/src/disco-app/CasiLabs.Disco.WebUi/client/bundler"
alias func="cd ~/src/disco-functional-tests"
alias ll='ls -la'
alias tst="~/src/disco-functional-tests/b2.sh"
alias soxy="sudo npm run dev:proxy"
alias derver="sudo npm run dev:server"
alias checkyarnlinks="ls -l node_modules | grep ^l"

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
alias gamm="git commit --amend --no-edit"
alias gdiff="git diff --color | diff-so-fancy"
alias gkillmerged="git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d"

# virtual env
alias startvirtual="source ~/venv3.4/bin/activate"

# aws
alias syncorgs="orgs && aws s3 sync ./build s3://app.test.csdisco.com"
alias syncroot="appr && aws s3 sync ./build s3://app.test.csdisco.com"

# misc
alias editbash="vim ~/.bash_profile"

# login into linux
alias getLinuxBox="cd ~/Documents/disco/pem && ssh -i garcia-dev.pem ubuntu@10.10.139.137"

ulimit -n 1000
