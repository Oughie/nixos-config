{ pkgs, ... }:
{
  services = {
    dbus.enable = true;
    flatpak.enable = true;
    gvfs.enable = true;
    udisks2.enable = true;
    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };
    displayManager = {
      defaultSession = "hyprland-uwsm";
      sddm = {
        enable = true;
        theme = "catppuccin-mocha";
        package = pkgs.kdePackages.sddm;
        wayland.enable = true;
      };
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      pulse.enable = true;
      wireplumber.enable = true;
    };
    printing = {
      enable = true;
      drivers = [ pkgs.hplip ];
    };
    xserver = {
      enable = true;
      xkb.layout = "de";
      xkb.variant = "nodeadkeys";
      excludePackages = [ pkgs.xterm ];
    };
  };
}
