## ZINIT setup (optional)

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"
source "${HOME}/.config/zsh/aliases.sh"
# Two regular plugins loaded.
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting

# Replacing powerlevel10k with ohmyposh
# Oh-My-Posh terminal
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"


## History management

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# History management useful with fzf

setopt SHARE_HISTORY # share history across multiple zsh sessions
setopt APPEND_HISTORY # append commands to history 
setopt INC_APPEND_HISTORY # append commands as they are typed not at shell exit
setopt HIST_IGNORE_DUPS # clean duplicates and blank lines from history file
setopt HIST_REDUCE_BLANKS
setopt AUTO_CD # no cd needed to change directory

# Using sudo !! reruns the prev command as sudo
# We want to verify the prev command before running it
setopt HIST_VERIFY

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

eval "$(zoxide init zsh)"

