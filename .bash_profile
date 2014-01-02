# Adam Sparks
# 12/30/13

# PS1
source ~/.git_prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(__git_ps1) "

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Alias
alias reload='source .bash_profile'
alias ls='ls -lhaG'
alias grep='grep --color=auto'
alias suod='sudo'
alias bi='brew install'
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"

# History
export HISTCONTROL=erasedups
export HISTSIZE=5000
shopt -s histappend
bind '"[A":history-search-backward' 
bind '"[B":history-search-forward'

# Man pages
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}
