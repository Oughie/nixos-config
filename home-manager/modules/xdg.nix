{ pkgs, ... }:
{
  xdg = {
    desktopEntries = {
      nixos-config = {
        name = "NixOS Configuration";
        genericName = "NixOS Configuration";
        exec = ''sh -c "nvim ~/Configuration"'';
        terminal = true;
      };

      notes = {
        name = "Notes";
        genericName = "Notes";
        exec = ''sh -c "nvim ~/Documents/NOTES.md"'';
        terminal = true;
      };
    };
    portal = {
      enable = true;
      extraPortals = [
        pkgs.xdg-desktop-portal-gtk
        pkgs.xdg-desktop-portal-wlr
      ];
    };
  };
}
