# My dotfiles

This directory contains the dotfiles for my system.

## Requirements

Ensure you have the following installed on your system.

### Nix
(https://nixos.org/download/#download-nix)

```
$ sh <(curl -L https://nixos.org/nix/install)
```

### Brew
(https://brew.sh)

```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git.

```
$ git clone git@github.com/tamtamchik/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
```

Then initialize setup.

```
$ ./install.sh
```
