{
  enable = true;
  shellAliases = {
    "os-update" = "nix flake update --flake $NIX_FLAKE_SRC";
    "os-upgrade" = "sudo nixos-rebuild switch --flake $NIX_FLAKE_SRC";
    "flake-develop" = "nix develop --command zsh";
  };
  enableCompletion = true;
  ohMyZsh = {
    enable = true;
    theme = "robbyrussell";
  };
  autosuggestions = {
    enable = true;
  };
  promptInit = ''
    if [ -n "$IN_NIX_SHELL" ] then
      export P1="(nix-shell) $P1"
    fi
  '';
}
