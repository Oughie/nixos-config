{ pkgs, ... }:
{
  imports = [ ./modules ];
  programs.home-manager.enable = true;

  home = {
    username = "luma";
    homeDirectory = "/home/luma";
    shell.enableZshIntegration = true;

    pointerCursor = {
      gtk.enable = true;
      name = "catppuccin-mocha-flamingo-cursors";
      package = pkgs.catppuccin-cursors.mochaFlamingo;
      size = 24;
    };

    stateVersion = "23.11";
  };
}
