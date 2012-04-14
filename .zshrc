## If not running interactively, do nothing
[ -z "$PS1" ] && return

## Load zsh modules
autoload -U zcalc 
autoload -Uz compinit
compinit
zstyle :compinstall filename '/home/wellska1/.zshrc'

## Options
setopt appendhistory autocd

## Keys
bindkey -v
bindkey "^?" backward-delete-char
bindkey '^[OH' beginning-of-line
bindkey '^[OF' end-of-line

## Aliases
. ~/.aliases
alias reload='source ~/.zshrc'
alias l='ls -hl'
alias ll='ls -Ahl'
alias la='ls -A'
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm 

## Variables
export EDITOR="vim"
export BROWSER="firefox"
export USERNAME=$USER
export PATH=/home/wellska1/maple14/bin:/home/wellska1/bin:$PATH
wmname LG3D 2>/dev/null
export _JAVA_AWT_WM_NONREPARENTING=1
export PS1="%n@%m:%~%# "

## Color completion ##
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	eval "`dircolors -b`"
	alias ls='ls --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi
zmodload -i zsh/complist
ZLS_COLORS=$LS_COLORS
# --// Colored manpages //--
#export MANPAGER="/usr/bin/most -s"
# --// Lesspipe //--
eval `lesspipe.sh`
#export LESSOPEN="| /usr/bin/lesspipe %s"
#export LESSCLOSE="/usr/bin/lesspipe %s %s"

## History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

