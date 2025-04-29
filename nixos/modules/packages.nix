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
    catppuccin-cursors.mochaFlamingo
    cliphist
    hyprpicker
    hyprshot
    papirus-icon-theme
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
    zoxide
  ];
}
