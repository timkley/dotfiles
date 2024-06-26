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
  exa
  imagemagick
  mackup
  openjdk@17
  python@3
  tig
  zsh-completions
)

for package in "${brewPackages[@]}"; do
  installPackage "$package"
done

caskPackages=(
  amethyst
  appcleaner
  caffeine
  dbngin
  discord
  firefox
  font-sauce-code-pro-nerd-font
  herd
  hyperkey
  imageoptim
  insomnia
  itsycal
  mattermost
  parallels
  phpstorm
  raycast
  spotify
  spotmenu
  tableplus
  warp
  wireguard
  zed
)

for package in "${caskPackages[@]}"; do
  installPackage "$package" "1"
done
