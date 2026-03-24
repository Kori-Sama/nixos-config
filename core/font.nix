{ pkgs, ... }: {
  fonts = {
    packages = with pkgs; [
      source-han-sans
      source-han-serif
      
      jetbrains-mono

      nerd-fonts.jetbrains-mono
    ];

    fontconfig = {
      enable = true;
      defaultFonts = {
        emoji = [ "Noto Color Emoji" ];
        monospace = [ "JetBrainsMono Nerd Font" "Source Han Sans SC" ];
        sansSerif = [ "Source Han Sans SC" "DejaVu Sans" ];
        serif = [ "Source Han Serif SC" "DejaVu Serif" ];
      };
    };
  };
}
