{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  users.users.james.packages = with pkgs; [
    # Applications
    alacritty
    neovim
    fastfetch
    obsidian

    # Utilities
    ripgrep

    # Themeing
    catppuccin-cursors.mochaDark
    catppuccinifier-cli

    # Desktop Environment
    rofi-power-menu
    rofi-wayland
    gtklock
    waybar
    hyprpaper
    dunst

    # System Management
    pavucontrol
    networkmanagerapplet
    pciutils
    hypridle
    kanshi
    brightnessctl
    libnotify

    # Programming
    nodePackages.vscode-json-languageserver
    lua-language-server
    typescript-language-server
    clang
    nixd
    git
  ];

  environment.systemPackages = [
  ];

  fonts.packages = with pkgs; [
    cantarell-fonts
    nerdfonts
  ];

  programs = {
    firefox.enable = true;
    hyprland.enable = true;
    thunar.enable = true;
    zsh = {
      enable = true;
      shellAliases = {
        "os-update" = "nix flake update --flake $NIX_FLAKE_SRC";
        "os-upgrade" = "sudo nixos-rebuild switch --flake $NIX_FLAKE_SRC";
        "repo-develop" = "nix develop --run zsh";
      };
      enableCompletion = true;
      ohMyZsh = {
        enable = true;
        theme = "robbyrussell";
      };
      autosuggestions = {
        enable = true;
      };
    };
  };

  services = {
    hardware.bolt.enable = true;
    blueman.enable = true;
    xserver.displayManager.gdm = {
      enable = true;
      wayland = true;
    };
  };

  security.pam.services.gtklock = {};
}
