# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r

# fastfetch. Will be disabled if above colorscript was chosen to install
fastfetch -c $HOME/.config/fastfetch/config-v2.jsonc

# Aliases
alias ls='eza --icons=always --color-scale=all -h'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias cat='bat'
alias pacmirror='sudo reflector --latest 5 --country Indonesia --sort rate --save /etc/pacman.d/mirrorlist'
alias initr='sudo mkinitcpio -P'
alias services='systemctl list-unit-files | grep enabled'
alias mv='mv -v'
alias srdownloader='/home/farel/Tools/The\ Sims\ Resource\ Downloader/srdownloader.sh'
alias s4ti='/home/farel/Tools/Sims 4 Tray Importer/s4ti.sh'
alias update='sudo pacman -Syu && yay -Syu'
alias image='loupe'

# Environment variables
export WINE="/usr/bin/wine"
export WINETRICKS="/usr/bin/winetricks"

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
