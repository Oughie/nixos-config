{ pkgs, ... }:
{
  services = {
    gvfs.enable = true;
    udisks2.enable = true;
    flatpak.enable = true;
    xserver = {
      enable = true;
      xkb.layout = "de";
      xkb.variant = "nodeadkeys";
      excludePackages = [ pkgs.xterm ];
    };
    desktopManager.cosmic.enable = true;
    hardware.openrgb.enable = true;
    displayManager = {
      defaultSession = "hyprland";
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
    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };
    # ACTION=="add", ATTRS{idVendor}=="046d", ATTRS{idProduct}=="c547", ATTR{power/wakeup}="disabled"
    udev = {
      packages = [
        pkgs.ddcutil
      ];
      extraRules = ''
        KERNEL=="i2c-[0-9]*", GROUP="i2c", MODE="0660"
      '';
    };
    dbus.enable = true;
    printing = {
      enable = true;
      drivers = [ pkgs.hplip ];
    };
  };
}
