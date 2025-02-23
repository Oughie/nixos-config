{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (catppuccin-sddm.override {
      flavor = "mocha";
      font = "Noto Sans";
      fontSize = "9";
      background = ./wallpaper.png;
      loginBackground = true;
    })
  ];
}
