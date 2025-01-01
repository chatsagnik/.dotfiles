#######
## Aliases file
#######
# alias cd with zoxide if preferred....... 
# alias cd="z"

# replace ls with ls-deluxe if installed
alias ls="lsd --group-dirs=first -a"
alias ls='ls --color=auto'
if [ -e "/usr/bin/lsd" ];then
	alias ls="lsd --group-dirs=first -aht"
else
	alias ls='ls --color=auto -ath'
fi

# aliases for cd
alias ..="cd .."
alias cdh="cd ~"
alias doc="cd ~/Documents"
alias dot="cd ~/.dotfiles"
alias nvdot="cd ~/.dotfiles/nvim/.config/nvim/"
alias idot="cd ~/.dotfiles/i3/.config/i3/"
alias polydot="cd ~/.dotfiles/polybar/.config/polybar/"
alias zdot="cd ~/.dotfiles/zsh/.config/zsh/"
alias config="cd ~/.config"
alias cdhl="ccdl ~"
alias docl="ccdl ~/Documents"
alias dotl="ccdl ~/.dotfiles"
alias configl="ccdl ~/.config"

# general purpose aliases

alias upgrade='sudo pacman -Syu'
alias pacin='sudo pacman -S'
alias pacout='sudo pacman -R'
alias paclean='sudo pacman -Sc'
alias zpath='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

alias off="sudo poweroff"
alias mkdir='mkdir -pv'
alias cp="cp -riv"
alias mv="mv -iv"
alias soz="source ~/.zshrc"
alias tree="ls --tree"
alias hss="hugo server --noHTTPCache"
alias dl="youtube-dl"

# use trash instead of rm -rf
trash () {
	if {"~/.trash" }; then
		echo "inside if" && tname="trash" && tname="trash.${1}" && mv $1 ~/.trash/$tname
	else
		echo $? && mkdir ~/.trash && tname="trash" && tname="trash.${1}" && mv $1 ~/.trash/$tname
	fi
}


# cd and ls
# alias for cd doesn't support arguments so we have to use a function
cdl () { cd "$1" && echo "$(pwd)" && ls -h; }
ccdl () { clear && cd "$1" && echo "$(pwd)" && ls ; }

# Editor aliases
if [ -e "/usr/bin/vim" ]; then
	alias v="vim"
fi

if [ -e "/usr/bin/nvim" ]; then
	alias nv="nvim"
	alias edit=nv
fi

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Git aliases
alias gadd='git add -A'
alias cln='git clone'
alias cmmt='git commit -m'
alias pull='git pull origin'
alias push='git push origin'
alias stat='git status'

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
# search for a file using fzf and open it in neovim
alias fnv='nv $(fzf --preview="bat --color=always {}")'
#use tab to select multiple files
alias fmnv='nv $(fzf -m --preview="bat --color=always {}")'
