> [!WARNING]
> I have switched off of NixOS for an FSH compliant distro. Checkout [sysmig](https://github.com/zuma206/sysmig) and [my config](https://github.com/zuma206/sysmig-config) for it for my in-use and maintained system configuration.

# Nix Flake

My NixOS system flake, as well as dotfiles which are symlinked via home manager

# Installation

- `git clone https://github.com/Zuma206/system-flake ~/Nix`
- `sudo nixos-rebuild switch --flake ~/Nix`

# Commands

- Subsequent rebuilds: `os-upgrade`
- Flake dependancy updates: `os-update`
