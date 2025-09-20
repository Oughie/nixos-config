{ pkgs, ... }:
{
  boot = {
    initrd.kernelModules = [ "amdgpu" ];
    kernelPackages = pkgs.linuxPackages_6_15;
    kernelParams = [ "mem_sleep_default=deep" ];

    loader = {
      timeout = 10;

      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };

      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        useOSProber = false;
        splashImage = null;

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

          menuentry 'Windows Boot Manager' --class windows --class os $menuentry_id_option 'osprober-efi-120E-21CF' {
              insmod part_gpt
              insmod fat
              search --no-floppy --fs-uuid --set=root 120E-21CF
              chainloader /efi/Microsoft/Boot/bootmgfw.efi
          }

          menuentry 'Arch Linux' --class arch --class gnu-linux --class gnu --class os $menuentry_id_option 'osprober-gnulinux-simple-035fe2f1-edc7-4fa2-bbd2-afbfcf32c2eb' {
              insmod part_gpt
              insmod ext2
              search --no-floppy --fs-uuid --set=root 035fe2f1-edc7-4fa2-bbd2-afbfcf32c2eb
              linux /boot/vmlinuz-linux root=/dev/nvme0n1p7
              initrd /boot/initramfs-linux.img
          }

          submenu 'Advanced options for Arch Linux' $menuentry_id_option 'osprober-gnulinux-advanced-035fe2f1-edc7-4fa2-bbd2-afbfcf32c2eb' {
              menuentry 'Arch Linux (on /dev/nvme0n1p7)' --class gnu-linux --class gnu --class os $menuentry_id_option 'osprober-gnulinux-/boot/vmlinuz-linux--035fe2f1-edc7-4fa2-bbd2-afbfcf32c2eb' {
                  insmod part_gpt
                  insmod ext2
                  search --no-floppy --fs-uuid --set=root 035fe2f1-edc7-4fa2-bbd2-afbfcf32c2eb
                  linux /boot/vmlinuz-linux root=/dev/nvme0n1p7
                  initrd /boot/initramfs-linux.img
              }
          }

          menuentry "Shutdown" {
              halt
          }
        '';
      };
    };
  };
}
