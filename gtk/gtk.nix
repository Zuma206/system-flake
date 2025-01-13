{ pkgs, pkgs-unstable, ... }:

{
  gtk = {
    enable = true;
    theme = {
      name = "catppuccin-mocha-pink-standard";
      package = pkgs.catppuccin-gtk.override {
        variant = "mocha";
        accents = [ "pink" ];
      };
    };
    cursorTheme = {
      name = "Nordzy-catppuccin-mocha-pink";
      package = pkgs-unstable.nordzy-cursor-theme;
    };
    font.name = "JetBrainsMonoNL Nerd Font";
  };
}
