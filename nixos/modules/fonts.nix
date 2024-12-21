{ pkgs, ... }:
{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      font-awesome
      noto-fonts
      corefonts
      nerd-fonts.hack
      nerd-fonts.jetbrains-mono
    ];
  };
}
