#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# POS Path for Android
export PATH="/Users/kaiju/android/platform-tools":$PATH
export PATH=/usr/local/sbin:$PATH

# Remove beer emoji from homebrew
export HOMEBREW_NO_EMOJI=1

# ls-- fix stupid Mac
export CLICOLOR_FORCE=1
export DISPLAY=1

# Alias
alias reload='source ~/.bash_profile'
alias ls='ls++'
alias grep='grep --color=auto'
alias suod='sudo'
alias bi='brew install'
alias bu='brew update && brew upgrade'
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias c='clear'
alias home='ssh home'
alias pi='ssh pi'
alias ty='ssh ty'

# Git commit message whatthecommit.
gc() {
   git commit -m"`curl -s http://whatthecommit.com/index.txt`"
}

# Show/hide hidden files in Finder
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

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
