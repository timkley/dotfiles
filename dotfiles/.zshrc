# Path to your oh-my-zsh installation.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
# ignore casing in z plugin
ZSHZ_CASE=ignore

DEFAULT_USER=`whoami`

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
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

# Sudoless npm https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

# Load Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Node version manager (fnm - fast alternative to nvm)
eval "$(fnm env --use-on-cd)"

# Load Liberica Java
export PATH="$PATH:/Library/Java/JavaVirtualMachines/liberica-jdk-22.jdk/Contents/Home/bin"

# Herd injected PHP binary.
export PATH="/Users/tk/Library/Application Support/Herd/bin/":$PATH


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

# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/tk/Library/Application Support/Herd/config/php/84/"

# Created by `pipx` on 2024-07-10 08:57:03
export PATH="$PATH:/Users/tk/.local/bin"

# bun completions
[ -s "/Users/tk/.bun/_bun" ] && source "/Users/tk/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# opencode
export PATH=/Users/tk/.opencode/bin:$PATH


# Herd injected PHP 8.5 configuration.
export HERD_PHP_85_INI_SCAN_DIR="/Users/tk/Library/Application Support/Herd/config/php/85/"
