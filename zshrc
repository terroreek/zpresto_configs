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
alias spaceinvaders='~/Public/color-scripts/color-scripts/space-invaders'
alias randompassword='< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c8'
alias pipes='~/Public/pipes.sh/pipes.sh -p 8'
alias ciscoconsole='sudo minicom'
alias top='htop'
alias tanks='~/Public/color-scripts/color-scripts/tanks'
alias darthvader='~/Public/color-scripts/color-scripts/darthvader'
alias pacman='~/Public/color-scripts/color-scripts/pacman'
alias tiefighter='~/Public/color-scripts/color-scripts/tiefighter2'
alias zenmonitor='~/Public/zenmonitor/zenmonitor'
alias prime95='~/Public/prime95/mprime'
alias blender='/opt/blender-benchmark-1.0b2-linux-glibc219-x86_64/blender-benchmark'

case $TERM in
    xterm*)
        precmd () {print -Pn "\e]0;%n@%m: %~\a"}
        ;;
esac

unset GREP_OPTIONS
alias grep='grep --color=auto'

neofetch
