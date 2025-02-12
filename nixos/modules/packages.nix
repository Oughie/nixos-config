{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Applications
    prismlauncher
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

    # - Grep
    fzf
    ripgrep

    # - Miscellaneous
    dhcpcd
    home-manager
    libinput
    libnotify
    pipewire
    swayidle
    zoxide

    # - USB
    udiskie
    udisks
    usbutils

    # Desktop

    # - Hyprland
    catppuccin-cursors.mochaFlamingo
    hyprpicker
    hyprshot
    swww
    wf-recorder

    # - Clipboard
    cliphist
    wl-clipboard

    # - Display Manager
    (catppuccin-sddm.override {
      flavor = "mocha";
      font = "Noto Sans";
      fontSize = "9";
      background = "${../assets/wallpaper.png}";
      loginBackground = true;
    })
  ];
}
