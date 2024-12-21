{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    usbutils
    udisks
    udiskie
    prettierd
    openrgb
    busybox

    bun
    nodejs_22

    dhcpcd
    android-tools
    prismlauncher
    python3
    isort
    python312Packages.black
    python312Packages.python-lsp-server
    python312Packages.graphviz

    openjdk
    maven
    jdt-language-server
    google-java-format
    stylua
    lua-language-server
    nil
    nixfmt-rfc-style
    rustup
    clang
    wf-recorder
    typescript-language-server
    vlc
    sxiv
    ripgrep
    fzf
    kitty
    swww
    hyprpicker
    hyprshot
    catppuccin-cursors.mochaFlamingo
    cliphist
    wl-clipboard
    zoxide
    pipewire
    home-manager
    gtk3
    xwayland
    libnotify
    libinput
    discord
    libreoffice
    unzip
    swayidle
    (catppuccin-sddm.override {
      flavor = "mocha";
      font = "Noto Sans";
      fontSize = "9";
      background = "${../assets/wallpaper.png}";
      loginBackground = true;
    })
  ];
}
