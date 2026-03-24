{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "kori";
        email = "korisamade@gmail.com";
      };
      init.defaultBranch = "main";
      push.autoSetupRemote = true;
      pull.rebase = true;
      core.editor = "nvim";

      aliases = {
        st = "status";
        co = "checkout";
        br = "branch";
        cm = "commit";
        ps = "push";
        pl = "pull";
        lg = "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all";
        unstage = "reset HEAD --";
        last = "log -1 HEAD";
      };
    };

    signing.format = null;
    ignores = [
      ".DS_Store"
      "*.swp"
      "node_modules"
      ".direnv"
      "dist"
    ];

  };
  programs.gh = {
    enable = true;

    settings = {
      git_protocol = "ssh";
      editor = "nvim";
      prompt = "enabled";
    };
  };

}
