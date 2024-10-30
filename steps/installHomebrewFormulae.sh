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
  ansible
  bat
  git
  imagemagick
  openjdk
  python@3
  tig
  zsh-completions
)

for package in "${brewPackages[@]}"; do
  installPackage "$package"
done

caskPackages=(
  amethyst
  discord
  firefox
  font-sauce-code-pro-nerd-font
  herd
  httpie
  hyperkey
  imageoptim
  itsycal
  logi-options+
  mattermost
  obsidian
  parallels
  phpstorm
  prism
  ray
  raycast
  spotify
  spotmenu
  steam
  tableplus
  warp
  wireguard
)

for package in "${caskPackages[@]}"; do
  installPackage "$package" "1"
done
