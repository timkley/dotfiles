#/bin/bash

# Install nvm (Node Version Manager)
PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash'
mkdir $HOME/.npm-packages
