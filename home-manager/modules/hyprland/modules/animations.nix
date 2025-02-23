{
  wayland.windowManager.hyprland.settings.animations = {
    enabled = true;
    bezier = "bezier, 0.075, 0.7, 0.075, 1.05";

    animation = [
      "windows, 1, 7, bezier"
      "windowsOut, 1, 7, bezier, popin 70%"
      "border, 1, 10, bezier"
      "borderangle, 1, 8, bezier"
      "fade, 1, 2, bezier"
      "workspaces, 1, 6, default"
    ];
  };
}
