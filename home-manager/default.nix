{ pkgs, ... }:
{
  imports = [
    ./modules
  ];

  home = {
    username = "luma";
    homeDirectory = "/home/luma";
    stateVersion = "23.11";
    pointerCursor = {
      gtk.enable = true;
      package = pkgs.catppuccin-cursors.mochaFlamingo;
      name = "catppuccin-mocha-flamingo-cursors";
      size = 16;
    };
  };

  programs.home-manager.enable = true;
}
