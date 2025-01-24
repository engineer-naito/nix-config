{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "engineer-naito";
    userEmail = "kosuke.naito.engineer@gmail.com";
    extraConfig = {
      core.editor = "vim";
      init.defaultBranch = "main";
      ghq.root = "/Users/naito/src";
    };
  };

  home.file = {
    ".config/git/ignore".text = ''
      .tours
      .DS_Store
    '';
  };
}
