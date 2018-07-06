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

# Tilix fix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Customize to your needs...
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias nyan='nc -v nyancat.dakko.us 23'
#alias screenfetch='screenfetch -t -c 09,16'
#alias screenfetch='~/Public/screenfetch/screenfetch-dev -t'
alias hypnotoad='~/Public/colours.sh & cat ~/Public/hypnotoad.txt'
alias spaceinvaders='~/Public/space-invaders/space.sh'
alias randompassword='< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c8'
alias pipes='Public/pipes.sh/pipes.sh -p 8'
alias ciscoconsole='sudo minicom'

case $TERM in
    xterm*)
        precmd () {print -Pn "\e]0;%n@%m: %~\a"}
        ;;
esac

unset GREP_OPTIONS
alias grep='grep --color=auto'

neofetch
