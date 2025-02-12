{ pkgs, ... }:
{
  fonts = {
    enableDefaultPackages = true;

    packages = with pkgs; [
      corefonts
      font-awesome
      noto-fonts
      nerd-fonts.hack
      nerd-fonts.jetbrains-mono
    ];
  };
}
