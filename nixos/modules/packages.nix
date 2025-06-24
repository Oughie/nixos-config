{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Applications
    prismlauncher
    kitty
    discord
    libreoffice
    nautilus
    eog

    # Desktop
    adwaita-icon-theme
    appimage-run
    catppuccin-cursors.mochaFlamingo
    cliphist
    hyprpicker
    hyprshot
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
