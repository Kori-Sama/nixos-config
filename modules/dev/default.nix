{ pkgs, ... }: {
  home.packages = with pkgs; [
    gnumake
    pkg-config
    
    gcc
    python3
    nodejs

    uv
    pnpm
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
