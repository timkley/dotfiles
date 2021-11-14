#/bin/bash

# Add global gitignore
echo "Symlinking and setting git config core.excludesFile to $HOME/.global-gitignore"
separator
ln -s $HOME/.dotfiles/shell/.global-gitignore $HOME/.global-gitignore
git config --global core.excludesfile $HOME/.global-gitignore

dotfiles=(
  .ideavimrc
  .mackup.cfg
  .vimrc
  .zshrc
)

for dotfile in "${dotfiles[@]}"; do
  echo "Symlinking $dotfile to $HOME/$dotfile"
  separator
  rm -f $HOME/$dotfile
  ln -s $HOME/.dotfiles/dotfiles/$dotfile $HOME/$dotfile
done