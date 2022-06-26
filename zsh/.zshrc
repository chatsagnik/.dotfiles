# instant prompt for powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# zsh options
setopt AUTO_CD # no cd needed to change directory

# display system info and source aliases
neofetch
source aliases.sh

# History management
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
# share history across multiple zsh sessions
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY # append commands as they are typed not at shell exit
# clean duplicates and blank lines from history file
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

# Using sudo !! reruns the prev command as sudo
# We want to verify the prev command before running it
setopt HIST_VERIFY

# powerlevel10k related stuff
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# syntax highlighting and autocompletion in the shell
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# colored man pages
function man() {
	env \
		LESS_TERMCAP_md=$(tput bold; tput setaf 4) \
		LESS_TERMCAP_me=$(tput sgr0) \
		LESS_TERMCAP_mb=$(tput blink) \
		LESS_TERMCAP_us=$(tput setaf 2) \
		LESS_TERMCAP_ue=$(tput sgr0) \
		LESS_TERMCAP_so=$(tput smso) \
		LESS_TERMCAP_se=$(tput rmso) \
		PAGER="${commands[less]:-$PAGER}" \
		man "$@"
}
