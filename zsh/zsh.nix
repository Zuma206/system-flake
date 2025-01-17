{
  enable = true;
  shellAliases = {
    "os-update" = "sudo nix flake update --flake $NIX_FLAKE_SRC";
    "os-upgrade" = "sudo nixos-rebuild switch --flake $NIX_FLAKE_SRC";
    "flake-develop" = "nix develop --command zsh";
  };
  ohMyZsh = {
    enable = true;
    theme = "robbyrussell";
  };
  autosuggestions = {
    enable = true;
  };
  promptInit = ''
    if [ -n "$IN_NIX_SHELL" ]; then
      export PS1="(nix-shell) $PS1"
    fi
  '';
}
