{ pkgs, ... }:
{
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    # extraModulePackages = [ config.boot.kernelPackages.ddcci-driver ];
    kernelParams = [ "mem_sleep_default=deep" ];
    kernelModules = [ "i2c-dev" ];

    loader = {
      timeout = 10;
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        useOSProber = false;
        theme =
          pkgs.fetchFromGitHub {
            owner = "catppuccin";
            repo = "grub";
            rev = "88f6124757331fd3a37c8a69473021389b7663ad";
            sha256 = "0rih0ra7jw48zpxrqwwrw1v0xay7h9727445wfbnrz6xwrcwbibv";
          }
          + "/src/catppuccin-mocha-grub-theme/";
        extraEntries = ''
          if [ "$grub_platform" = "efi" ]; then
              fwsetup --is-supported
              if [ "$?" = 0 ]; then
                  menuentry 'UEFI Firmware Settings' $menuentry_id_option 'uefi-firmware' {
                      fwsetup
                  }
              fi
          fi

          menuentry "Shutdown" {
              halt
          }
        '';
      };
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
    };
  };
}