{
  imports = [ ./modules ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    settings.monitor = ",preferred,auto,auto";
  };
}
