{ pkgs, ... }:
{
  programs = {
    zsh.enable = true;
    hyprland = {
      enable = true;
      withUWSM = true;
      xwayland.enable = true;
    };
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  hardware.graphics = {
    enable = true;
    extraPackages = [ pkgs.amdvlk ];
  };

  documentation.nixos.enable = false;
  users.users.luma = {
    isNormalUser = true;
    shell = pkgs.zsh;

    extraGroups = [
      "networkmanager"
      "wheel"
      "lp"
    ];
  };
}
