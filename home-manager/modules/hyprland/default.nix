{
  imports = [ ./modules ];
  wayland.windowManager.hyprland = {
    enable = true;
    settings.monitor = ",preferred,auto,auto";
    xwayland.enable = true;
  };
}
