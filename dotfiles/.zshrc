# Path to your oh-my-zsh installation.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
# ignore casing in z plugin
ZSHZ_CASE=ignore

DEFAULT_USER=`whoami`

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
	git
	sudo
	z
)

source $ZSH/oh-my-zsh.sh

# Load the shell dotfiles
for file in ~/.dotfiles/shell/{exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Load secrets (local-only, not tracked in dotfiles)
[ -f ~/.secrets ] && source ~/.secrets

# Load Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Node version manager (fnm - fast alternative to nvm)
eval "$(fnm env --use-on-cd)"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# zsh history options (complement to exports)
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
