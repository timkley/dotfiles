#/bin/bash

function installPackage() {
  packageName=$1
  cask=$2
  customInstaller=$HOME/.dotfiles/brew/$packageName

  if [ -f $customInstaller ]; then
    echo "Loading custom installer for $packageName"
    separator
    source $customInstaller
  else
    echo "Installing $packageName directly from brew"
    separator

    if [ "$cask" != "1" ]; then
      brew install $packageName
    else
      brew install $packageName --cask
    fi
  fi
}

brewPackages=(
  bat
  exa
  imagemagick
  mackup
  mysql
  tig
  yarn
  zsh-completions
)

for package in "${brewPackages[@]}"; do
  installPackage "$package"
done

caskPackages=(
  appcleaner
  brave
  caffeine
  firefox
  font-sauce-code-pro-nerd-font
  herd
  imageoptim
  insomnia
  iterm2
  itsycal
  mattermost
  parallels
  phpstorm
  raycast
  spotify
  spotmenu
  tableplus
  visual-studio-code
  wireguard
)

for package in "${caskPackages[@]}"; do
  installPackage "$package" "1"
done
