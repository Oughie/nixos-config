{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    # Applications
    prismlauncher
    vlc
    kitty
    openrgb
    sxiv
    discord
    libreoffice

    # Development

    # - Java
    openjdk
    maven
    google-java-format
    jdt-language-server

    # - Python
    python3
    isort
    python312Packages.black
    python312Packages.python-lsp-server
    python312Packages.graphviz

    # - Lua
    stylua
    lua-language-server

    # - Nix
    nil
    nixfmt-rfc-style

    # - C
    clang

    # - Rust
    rustup

    # - Js/Ts
    prettierd
    typescript-language-server

    # Utils
    dhcpcd
    fzf
    gtk3
    home-manager
    libinput
    libnotify
    pipewire
    ripgrep
    swayidle
    swww
    udiskie
    udisks
    unzip
    usbutils
    wf-recorder
    zoxide

    # Desktop

    # - Clipboard
    cliphist
    wl-clipboard

    # - Hyprland

    catppuccin-cursors.mochaFlamingo
    hyprpicker
    hyprshot

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
