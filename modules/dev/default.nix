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

    nil
    ruff
    ty
    nixfmt
    lua-language-server
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
