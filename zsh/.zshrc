pfetch

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	colored-man-pages
	# archlinux
	alias-finder
	aliases
	zsh-syntax-highlighting
	zsh-autosuggestions
	)

source $ZSH/oh-my-zsh.sh
source aliases.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
