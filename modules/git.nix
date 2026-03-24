{ pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "kori";
    userEmail = "korisamade@gmail.com";

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

    # 增强型 Diff 工具 (Delta)
    delta = {
      enable = true;
      options = {
        navigate = true;
        light = false;
        side-by-side = true; # 开启并排对比，大屏神器
        line-numbers = true;
      };
    };

    # 其他全局配置
    extraConfig = {
      init.defaultBranch = "main";
      push.autoSetupRemote = true; # 自动设置远程分支
      pull.rebase = true;          # 拉取时默认使用 rebase，保持提交历史整洁
      core.editor = "nvim";        # 强制使用你的 Neovim 作为编辑器
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
}
