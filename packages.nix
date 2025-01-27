{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  users.users.james.packages = with pkgs; [
    # Applications
    neovim
    jetbrains.idea-community-bin
    alacritty
    fastfetch
    obsidian
    vscodium
    tmux
    sqlite
    chromium
    openssl
    zed-editor

    # Utilities
    ripgrep
    git

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

    # Language Servers / Formatters
    vscode-langservers-extracted
    lua-language-server
    typescript-language-server
    jdt-language-server
    nixd
    gopls
    stylua
    prettierd
    haskell-language-server

    # Languages / Compilers
    wrangler
    nodejs_22
    go
    zulu23 # OpenJDK
    clang
    bun
    python314
    ghc
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
    zsh = import ./zsh/zsh.nix;
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
      ];
    };
    file-roller.enable = true;
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
