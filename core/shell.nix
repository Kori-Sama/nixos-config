{ pkgs, ... }:
{
  programs.fish.enable = true;
  users.users.kori = {
    shell = pkgs.fish;
  };
}
