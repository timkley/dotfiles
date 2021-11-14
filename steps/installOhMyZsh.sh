#/bin/bash

rm -rf $HOME/.oh-my-zsh
curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Create the .z file to remove an irritating error when first changing a directory
touch $HOME/.z
