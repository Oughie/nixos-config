{
  xdg.desktopEntries = {
    notes = {
      name = "Notes";
      genericName = "Notes";
      exec = "nvim /home/luma/Documents/NOTES.md";
      terminal = true;
    };
    nixos-config = {
      name = "NixOS Configuration";
      genericName = "NixOS Configuration";
      exec = "nvim /home/luma/Configuration";
      terminal = false;
    };
  };
}
