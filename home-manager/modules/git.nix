{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "Oughie";
    userEmail = "montgalletsabinpantin@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
