{ ... }:
{
  environment = {
    sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
    };
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
    services.hibernate-fix-wired-connection = {
      description = "Fix wired connection after resuming from hibernation";
      after = [ "multi-user.target" ];
      wantedBy = [ "multi-user.target" ];

      serviceConfig = {
        Type = "oneshot";
        ExecStart = [
          "/run/current-system/sw/bin/nmcli networking off"
          "/run/current-system/sw/bin/nmcli networking on"
        ];
      };
    };
  };

  security.rtkit.enable = true;
  system.stateVersion = "24.05";
}
