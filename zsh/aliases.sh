####### 
# general purpose aliases

alias upgrade='sudo pacman -Syu'
alias pacin='sudo pacman -S'
alias paclean='sudo pacman -Sc'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias ..="cd .. && pwd && ls"
alias ...="cd ../.. && pwd && ls"
alias cdh="cd ~ && ls"
alias off="sudo poweroff"
alias mkdir='mkdir -pv'
alias showallprocess="ps -AH|less"
alias soz="source ~/.zshrc"

# replace ls with ls-deluxe if installed
alias ls="lsd --group-dirs=first -a"
alias ls='ls --color=auto'

if [ -e "/usr/bin/lsd" ];then
	alias ls="lsd --group-dirs=first -a"
else
	alias ls='ls --color=auto'
fi

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
alias gbr='git branch'
alias gchkout='git checkout'
alias gcln='git clone'
alias gcmt='git commit -m'
alias gftch='git fetch'
alias gpl='git pull origin'
alias gpsh='git push origin'
alias gst='git status'
alias tag='git tag'
alias newtag='git tag -a'

# cd and ls
# alias for cd doesn't support arguments so we have to use a function
function cdl {
	cd "$1"; 
	echo "Current directory: $(pwd)";
	ls;
}
