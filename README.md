# My dotfiles

This directory contains the dotfiles for my system

## Dependencies
### i3
### polybar
### dunst
### rofi
### kitty
### Neovim
### Zoxide
### fzf
### zsh
### oh my posh
### fastfetch
### btop
### flameshot
### cava
### autotiling
### yay
### Cascadia Cove font

## Requirements

Ensure you have the following installed on your system

### Git

```
pacman -S git
```

### Stow

```
pacman -S stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone https://github.com/AkihiroAurora/i3wm-dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```
