{ pkgs, ... }: {
  programs.btop = {
    enable = true;
    settings = {
      color_theme = "flat-remix";
      theme_background = true;
      vim_keys = true;
    };
  };  

  home.packages = with pkgs; [
    duf
    dust
  ];
}
