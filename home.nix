{ config, pkgs, ... }:

{
  home.username = "kori";
  home.homeDirectory = "/home/kori";
  home.stateVersion = "23.11";

  imports = [
    ./modules/shell
    ./modules/nvim/nvim.nix
    ./modules/git.nix
  ];

  home.packages = with pkgs; [
    git
    fastfetch
  ];

  programs.home-manager.enable = true;
}
