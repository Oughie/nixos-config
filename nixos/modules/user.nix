{ pkgs, ... }:
{
  programs = {
    zsh.enable = true;
    hyprland = {
      enable = true;
      withUWSM = true;
      xwayland.enable = true;
    };
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  hardware = {
    printers.ensurePrinters = [
      {
        name = "DeskJet_2700";
        location = "Home Printer";
        deviceUri = "usb://HP/DeskJet%202700%20series?serial=CN1576A1K6&interface=1";
        model = "HP/hp-deskjet_2700_series.ppd.gz";
        ppdOptions.PageSize = "A4";
      }
    ];
    graphics = {
      enable = true;
      extraPackages = [ pkgs.amdvlk ];
    };
  };

  documentation.nixos.enable = false;
  users.users.luma = {
    isNormalUser = true;
    description = "luma";
    extraGroups = [
      "networkmanager"
      "wheel"
      "lp"
    ];
    shell = pkgs.zsh;
  };
}
