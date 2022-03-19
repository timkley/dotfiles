#/bin/bash

git clone https://github.com/powerline/fonts.git --depth=1 $HOME/fonts
cd $HOME/fonts
./install.sh
cd $HOME
rm -rf fonts