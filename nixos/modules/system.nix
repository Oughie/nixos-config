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
    services.fix-wired-connection = {
      description = "Fix wired connection after resuming from hibernation";
      wantedBy = [
        "hibernate.target"
        "suspend.target"
      ];
      after = [
        "hibernate.target"
        "suspend.target"
      ];
      serviceConfig = {
        Type = "oneshot";
        ExecStart = [
          "/run/current-system/sw/bin/nmcli networking off ; /run/current-system/sw/bin/nmcli networking on"
        ];
        RemainAfterExit = true;
      };
    };
    sleep.extraConfig = ''
      HibernateDelaySec=10m
      SuspendState=mem
    '';
  };

  security.rtkit.enable = true;
  system.stateVersion = "24.05";
}
