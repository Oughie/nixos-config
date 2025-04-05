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
    home-manager
    libnotify
    libva
    pipewire
    swayidle
    zoxide
  ];
}
