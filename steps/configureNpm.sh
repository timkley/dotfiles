#/bin/bash

# Install nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

# Create a directory for global packages and tell npm where to store globally installed packages
mkdir "${HOME}/.npm-packages"
source "${HOME}/.zshrc"
npm config set prefix "${HOME}/.npm-packages"