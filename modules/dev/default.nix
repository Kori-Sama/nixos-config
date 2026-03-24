{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gnumake
    pkg-config

    gcc
    python3
    nodejs

    uv
    pnpm

    ruff
    nixfmt
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
