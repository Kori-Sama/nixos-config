{ pkgs, ... }:
{
  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set -g fish_greeting ""
    '';

    shellAliases = {
      nix-switch = "sudo nixos-rebuild switch --flake ~/nixos-config#nixos";
      nix-clean = "sudo nix-collect-garbage -d";

      add-sw = "git add . && nix-switch";

      ls = "eza --icons";
      ll = "eza -l --icons";
      cat = "bat";

      pn = "pnpm";
    };

    plugins = [
      {
        name = "z";
        src = pkgs.fishPlugins.z.src;
      }
      {
        name = "fzf-fish";
        src = pkgs.fishPlugins.fzf-fish.src;
      }
    ];
  };

  home.packages = with pkgs; [
    eza
    bat
    fzf
    zoxide
  ];
}
