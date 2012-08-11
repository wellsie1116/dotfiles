## If not running interactively, do nothing
[ -z "$PS1" ] && return

## Load zsh modules
autoload -U compinit promptinit zcalc zsh-mime-setup
autoload -Uz vcs_info
compinit
promptinit
zsh-mime-setup
zstyle :compinstall filename '/home/wellska1/.zshrc'

## Options
setopt APPEND_HISTORY SHARE_HISTORY
setopt CORRECT
setopt AUTO_CD

## Keys
bindkey -v

bindkey '[3~' delete-char # Del
bindkey '[H' beginning-of-line # Home
bindkey '[F' end-of-line # End
bindkey '[1;5D' backward-word # Left Arrow
bindkey '[1;5C' forward-word # Right Arrow
bindkey '' history-incremental-search-backward # Ctrl-R
bindkey '[A' history-search-backward # Up Arrow
bindkey '[B' history-search-forward # Down Arrow

bindkey -M vicmd '[3~' delete-char # Del
bindkey -M vicmd '[H' beginning-of-line # Home
bindkey -M vicmd '[F' end-of-line # End
bindkey -M vicmd '[1;5D' backward-word # Left Arrow
bindkey -M vicmd '[1;5C' forward-word # Right Arrow
bindkey -M vicmd '' history-incremental-search-backward # Ctrl-R
bindkey -M vicmd '[A' history-search-backward # Up Arrow
bindkey -M vicmd '[B' history-search-forward # Down Arrow
bindkey -M vicmd ' ' magic-space


## Aliases
. ~/.aliases
alias reload='source /etc/profile && source ~/.zprofile && source ~/.zshrc'
alias l='ls -hl'
alias ll='ls -Ahl'
alias la='ls -A'
#[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm 

## VCS Integration
setopt PROMPT_SUBST
zstyle ':vcs_info:*' enable git cvs svn
zstyle ':vcs_info:*' actionformats \
	' [%F{2}%b%F{3}|%F{1}%a%f]'
zstyle ':vcs_info:*' formats       \
	' [%F{2}%b%f]'
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
precmd () { vcs_info }
#export PS1='%F{5}[%F{2}%n%F{5}] %F{3}%3~ ${vcs_info_msg_0_}%f%# '

## Variables
export EDITOR="vim"
export BROWSER="chromium"
export USERNAME=$USER
wmname LG3D 2>/dev/null
export _JAVA_AWT_WM_NONREPARENTING=1
PS1='%n@%m:%~${vcs_info_msg_0_}%# '

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
if command -v lesspipe >/dev/null 2>&1; then
	eval `lesspipe`
elif command -v lesspipe.sh >/dev/null 2>&1; then
	eval `lesspipe.sh`
fi

## History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

