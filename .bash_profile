# Adam Sparks
# 01/02/14

# POS Path
export PATH="/Users/kaiju/android/platform-tools/":$PATH

# PS1
source ~/.git_prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(__git_ps1) "

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Android ADB completion
source ~/.android/android

# Alias
alias reload='source ~/.bash_profile'
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

# Extract shit
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f $1 ] ; then
        case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.tar.xz)    tar xvJf $1    ;;
          *.lzma)      unlzma $1      ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       unrar x -ad $1 ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *.xz)        unxz $1        ;;
          *.exe)       cabextract $1  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "$1 - file does not exist"
    fi
fi
}

gc() {
   git commit -m"`curl -s http://whatthecommit.com/index.txt`"
}
