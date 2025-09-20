{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Applications
    discord
    eog
    kitty
    libreoffice
    nautilus
    prismlauncher

    # Desktop
    adwaita-icon-theme
    appimage-run
    catppuccin-cursors.mochaFlamingo
    cliphist
    hyprpicker
    swww
    wf-recorder
    wl-clipboard

    # Development

    # - Lua
    stylua
    lua-language-server

    # - Nix
    nil
    nixfmt-rfc-style

    # Utils

    # - Grep
    fzf
    ripgrep

    # - Miscellaneous
    dhcpcd
    ethtool
    home-manager
    libnotify
    libva
    pipewire
    swayidle
    unzip
    zoxide
  ];
}
