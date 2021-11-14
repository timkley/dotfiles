# My personal dotfiles

My personal dotfiles, greatly inspired by [Freeks dotfiles](https://github.com/freekmurze/dotfiles) but tailored to my needs.

Backup of app settings is done with [Mackup](https://github.com/lra/mackup).

## Usage

```shell
git clone git@github.com:timkley/dotfiles.git .dotfiles
cd .dotfiles
chmod +x bootstrap
./bootstrap
```

## How it works

The `bootstrap` file defines all necessary functions needed for the installation process. After asking for confirmation we run the `install` script.

The necessary steps to set up the environment are defined in the `installFlow` variable. Every step is also the name of the accompanying file located in
the `steps` folder.
