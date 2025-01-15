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
    nixd
    gopls
    clang
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
    zsh = import ./zsh/zsh.nix;
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
