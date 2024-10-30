#/bin/bash

# Add global gitignore
echo "Symlinking and setting git config core.excludesFile to $HOME/.global-gitignore"
separator

dotfiles=(
  .gitconfig
  .global-gitignore
  .ideavimrc
  .vimrc
  .zshrc
)

for dotfile in "${dotfiles[@]}"; do
  echo "Symlinking $dotfile to $HOME/$dotfile"
  separator
  rm -f $HOME/$dotfile
  ln -s $HOME/.dotfiles/dotfiles/$dotfile $HOME/$dotfile
done