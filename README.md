# Nix Flake

My NixOS system flake, as well as dotfiles which are symlinked via home manager

# Installation

- `git clone https://github.com/Zuma206/system-flake ~/Nix`
- `sudo nixos-rebuild switch --flake ~/Nix`

# Commands

- Subsequent rebuilds: `os-upgrade`
- Flake dependancy updates: `os-update`
