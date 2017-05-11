# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="essembeh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=()
plugins+=(command-not-found)
plugins+=(vi-mode zsh_reload)
plugins+=(git adb docker repo pip)
plugins+=(man systemd sudo)
plugins+=(go python)

source $ZSH/oh-my-zsh.sh

## Variables
export EDITOR="vim"
export BROWSER="chromium"
export MANWIDTH=90
export GOPATH=~/go

# Fixup vi key bindings

bindkey -M vicmd "${terminfo[kich1]}" vi-insert # Insert
bindkey -M vicmd "${terminfo[kdch1]}" delete-char # Delete
bindkey -M vicmd "${terminfo[khome]}" beginning-of-line #Home
bindkey -M vicmd "${terminfo[kend]}" end-of-line # End
bindkey -M vicmd "${terminfo[kpp]}" beginning-of-line # PageUp
bindkey -M vicmd "${terminfo[knp]}" end-of-line # PageDown

bindkey "${terminfo[kich1]}" vi-insert # Insert
bindkey "${terminfo[kdch1]}" delete-char # Delete
bindkey "${terminfo[khome]}" beginning-of-line #Home
bindkey "${terminfo[kend]}" end-of-line # End
bindkey "${terminfo[kpp]}" beginning-of-line # PageUp
bindkey "${terminfo[knp]}" end-of-line # PageDown

## Miscellaneous Aliases
source ~/.aliases

## .zshrc updates
function edit-file() {
	$EDITOR $1
}
alias .zshrc='edit-file ~/.zshrc.local && src'
alias .aliases='edit-file ~/.aliases && src'
alias .xresources='edit-file ~/.Xresources && xrdb -merge ~/.Xresources'

## System Management

function sc-reload() {
	sudo systemctl reload-or-try-restart $1
	systemctl status $1
}

## Web helpers
function web-help() {
	chromium --user-data-dir=/tmp/web-help --incognito $1 &!
} >/dev/null 2>&1

alias forkterm='xterm &; disown'
