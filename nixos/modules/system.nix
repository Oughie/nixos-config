{ pkgs, ... }:
{
  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
  };

  hardware.graphics = {
    enable = true;
    extraPackages = [ pkgs.amdvlk ];
  };

  networking = {
    hostName = "samoyed";
    networkmanager.enable = true;
    firewall.enable = true;
  };

  powerManagement = {
    enable = true;
    cpuFreqGovernor = "performance";
  };

  systemd = {
    sleep.extraConfig = ''
      HibernateDelaySec=10m
      SuspendState=mem
    '';
  };

  security.rtkit.enable = true;
  system.stateVersion = "24.05";
}
