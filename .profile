export PATH=/usr/local/mysql/bin:${PATH}
export EDITOR="mvim -f"

# Text colors
Black="\[\033[0;30m\]"
Red="\[\033[0;31m\]"
Green="\[\033[0;32m\]"
Yellow="\[\033[0;33m\]"
Blue="\[\033[0;34m\]"
Magenta="\[\033[0;35m\]"
Cyan="\[\033[0;36m\]"
White="\[\033[0;37m\]"
# Bold colors
BoldBlack="\[\033[1;30m\]"
BoldRed="\[\033[1;31m\]"
BoldGreen="\[\033[1;32m\]"
BoldYellow="\[\033[1;33m\]"
BoldBlue="\[\033[1;34m\]"
BoldMagenta="\[\033[1;35m\]"
BoldCyan="\[\033[1;36m\]"
BoldWhite="\[\033[1;37m\]"
# Reset color
ColorOff="\[\033[0m\]"

function git_current_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="$Cyan\u@\H $Blue\W $Yellow\$(git_current_branch)$Cyan\$$ColorOff "

alias grep="grep --color=auto"

alias g="git status"
alias gco="git checkout"
alias gci="git commit"
alias gg="git log --all --grep"
alias gbc="git branch -a --contains"

alias b="bundle exec"

# A no-overhead version of "rails" command
alias r="script/rails"

[[ -s "/Users/vlad/.rvm/scripts/rvm" ]] && source "/Users/vlad/.rvm/scripts/rvm"
