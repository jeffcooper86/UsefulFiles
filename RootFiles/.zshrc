export PATH=/usr/local/bin:$PATH

#aliases
alias pidle='/usr/bin/idle'
alias pyserve='python -m SimpleHTTPServer 8000'


#source files
#source ~/git-completion.zsh
#source ~/git-prompt.sh

unsetopt BEEP

#set custom prompt

autoload -Uz vcs_info
precmd() { print "" }
precmd_vcs_info() { vcs_info }
precmd_funcitons+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
