{ pkgs, ... }:
{
  imports = [
    ./fish.nix
  ];

  programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };

  xdg.configFile."starship.toml".source = ./starship.toml;
}
