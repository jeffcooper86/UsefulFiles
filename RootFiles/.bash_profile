export PATH=/usr/local/bin:$PATH
alias pyidle="/usr/bin/idle"
source ~/git-completion.bash
source ~/git-prompt.sh

#colors
black="\[\033[0;30m\]"
red="\[\033[0;31m\]"
green="\[\033[0;32m\]"
brown="\[\033[0;33m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
cyan="\[\033[0;36m\]"
reset="\[\033[0m\]"

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="\n$cyan\u$green\$(__git_ps1) $reset :$cyan\W $purple\$ $reset"

