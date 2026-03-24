{ pkgs, ... }: {
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "kori";
        email = "korisamade@gmail.com";
      };
      init.defaultBranch = "main";
      push.autoSetupRemote = true; # 自动设置远程分支
      pull.rebase = true;          # 拉取时默认使用 rebase，保持提交历史整洁
      core.editor = "nvim";        # 强制使用你的 Neovim 作为编辑器
    };

    # 别名设置：让你少敲 70% 的键盘
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
    
    # 全局忽略文件
    ignores = [
      ".DS_Store"
      "*.swp"
      "node_modules"
      ".direnv" # 针对 Nix 用户必备
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
