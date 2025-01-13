{ pkgs, pkgs-unstable, ... }:

{
  home-manager = {
    extraSpecialArgs = { inherit pkgs-unstable; };
    users.james.imports = [ ./home.nix ];
  };

  users.users.james = {
    isNormalUser = true;
    description = "james";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };

  environment.sessionVariables.NIX_FLAKE_SRC = "$HOME/Nix";
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
