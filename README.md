# My personal dotfiles

My personal dotfiles, greatly inspired by [Freeks dotfiles](https://github.com/freekmurze/dotfiles) but tailored to my needs.

## Usage

First, install Xcode Command Line Tools:

```shell
xcode-select --install
```

Now, make sure that Terminal has Full Disk Access: Open System Preferences, go to Security & Privacy, click on the Privacy tab, and add Terminal to the Full Disk Access list.  
Unless you do this, the installation of some apps will likely fail.

Now clone the repository and run the `bootstrap` script:

```shell
cd ~
git clone https://github.com/timkley/dotfiles.git .dotfiles
cd .dotfiles
chmod +x bootstrap
./bootstrap
```

## How it works

The `bootstrap` file defines all necessary functions needed for the installation process. After asking for confirmation we run the `install` script.

The necessary steps to set up the environment are defined in the `installFlow` variable. Every step is also the name of the accompanying file located in
the `steps` folder.
