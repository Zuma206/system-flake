{ pkgs, ... }:

{
  imports = [
    ./gtk/gtk.nix
  ];

  programs.home-manager.enable = true;

  home = {
    username = "james";
    homeDirectory = "/home/james";
    
    packages = with pkgs; [
      alacritty-theme
    ];

    file = {
      ".config/hypr" = {
        source = ./hypr;
        recursive = true;
      };

      ".config/waybar" = {
        source = ./waybar;
        recursive = true;
      };

      ".config/rofi" = {
        source = ./rofi;
        recursive = true;
      };

      ".config/alacritty" = {
        source = ./alacritty;
        recursive = true;
      };

      ".config/kanshi" = {
        source = ./kanshi;
        recursive = true;
      };

      ".config/nvim" = {
        source = ./nvim;
        recursive = true;
      };

      ".zshrc" = ./zsh/.zshrc;
    };

      # This value determines the Home Manager release that your configuration is
      # compatible with. This helps avoid breakage when a new Home Manager release
      # introduces backwards incompatible changes.
      #
      # You should not change this value, even if you update Home Manager. If you do
      # want to update the value, then make sure to first check the Home Manager
      # release notes.
      stateVersion = "24.11"; # Please read the comment before changing.
  };
}
