{ pkgs, ... }:
{
  documentation.nixos.enable = false;

  programs = {
    steam.enable = true;
    zsh.enable = true;
    hyprland = {
      enable = true;
      withUWSM = true;
      xwayland.enable = true;
    };
  };

  users.users.luma = {
    isNormalUser = true;
    shell = pkgs.zsh;

    extraGroups = [
      "networkmanager"
      "wheel"
      "libvirtd"
      "lp"
    ];
  };
}
