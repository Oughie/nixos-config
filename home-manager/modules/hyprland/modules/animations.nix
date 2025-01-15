{
  wayland.windowManager.hyprland.settings.animations = {
    enabled = true;
    bezier = "myBezier, 0.075, 0.65, 0.075, 1.045";
    animation = [
      "windows, 1, 7, myBezier"
      "windowsOut, 1, 7, default, popin 70%"
      "border, 1, 10, default"
      "borderangle, 1, 8, default"
      "fade, 1, 2, default"
      "workspaces, 1, 6, default"
    ];
  };
}
