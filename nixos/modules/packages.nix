{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Applications
    prismlauncher
    vlc
    kitty
    sxiv
    discord
    libreoffice

    # Development

    # - Lua
    stylua
    lua-language-server

    # - Nix
    nil
    nixfmt-rfc-style

    # - Rust
    rustup

    # Utils
    dhcpcd
    fzf
    home-manager
    libinput
    libnotify
    pipewire
    ripgrep
    swayidle
    wf-recorder
    zoxide

    # - USB
    udiskie
    udisks
    usbutils

    # Desktop

    # - Clipboard
    cliphist
    wl-clipboard

    # - Hyprland
    catppuccin-cursors.mochaFlamingo
    hyprpicker
    hyprshot
    swww

    # Display Manager
    (catppuccin-sddm.override {
      flavor = "mocha";
      font = "Noto Sans";
      fontSize = "9";
      background = "${../assets/wallpaper.png}";
      loginBackground = true;
    })
  ];
}
