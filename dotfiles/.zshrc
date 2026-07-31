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


# Herd injected PHP 8.5 configuration.
export HERD_PHP_85_INI_SCAN_DIR="/Users/tk/Library/Application Support/Herd/config/php/85/"


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/tk/Library/Application Support/Herd/config/php/84/"


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/tk/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/tk/Library/Application Support/Herd/config/php/82/"


# Herd injected PHP 8.1 configuration.
export HERD_PHP_81_INI_SCAN_DIR="/Users/tk/Library/Application Support/Herd/config/php/81/"


# Herd injected PHP 8.0 configuration.
export HERD_PHP_80_INI_SCAN_DIR="/Users/tk/Library/Application Support/Herd/config/php/80/"


# Herd injected PHP 7.4 configuration.
export HERD_PHP_74_INI_SCAN_DIR="/Users/tk/Library/Application Support/Herd/config/php/74/"

# sentry
fpath=("/Users/tk/.local/share/zsh/site-functions" $fpath)
