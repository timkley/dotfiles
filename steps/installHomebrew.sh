#/bin/bash

# Install Homebrew itself
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Load Homebrew before .zshrc is loaded again
eval "$(/opt/homebrew/bin/brew shellenv)"