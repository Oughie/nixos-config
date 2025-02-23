{ pkgs, ... }:
{
  services = {
    dbus.enable = true;
    libinput.enable = true;
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

    xserver = {
      enable = true;
      excludePackages = [ pkgs.xterm ];
      videoDrivers = [ "amdgpu" ];

      xkb = {
        layout = "de";
        variant = "nodeadkeys";
      };
    };
  };
}
