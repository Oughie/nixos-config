{ pkgs, ... }:
{
  imports = [
    ./modules
  ];

  programs.home-manager.enable = true;

  home = {
    username = "luma";
    homeDirectory = "/home/luma";

    pointerCursor = {
      gtk.enable = true;
      package = pkgs.catppuccin-cursors.mochaFlamingo;
      name = "catppuccin-mocha-flamingo-cursors";
      size = 24;
    };

    stateVersion = "23.11";
  };
}
