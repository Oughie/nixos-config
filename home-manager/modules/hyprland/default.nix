{
  imports = [ ./modules ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
}
