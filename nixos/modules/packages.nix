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

    # - USB
    udiskie
    udisks
    usbutils

    # - Miscellaneous
    dhcpcd
    home-manager
    libnotify
    pipewire
    swayidle
    zoxide

    # Desktop
    catppuccin-cursors.mochaFlamingo
    hyprpicker
    hyprshot
    swww
    wf-recorder
    cliphist
    wl-clipboard
  ];
}
