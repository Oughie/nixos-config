{
  nixpkgs.overlays = [
    (final: prev: {
      kitty = prev.kitty.overrideAttrs (o: {
        postInstall =
          (o.postInstall or "")
          + ''
            cp -f ${./kitty-dark.png} $out/share/icons/hicolor/256x256/apps/kitty.png
            rm -f $out/share/icons/hicolor/scalable/apps/kitty.svg
          '';
      });
    })
  ];
  programs.kitty = {
    enable = true;
    settings = {
      enable_audio_bell = false;
      bold_font = "JetBrainsMono Nerd Font Mono Extra Bold";
      bold_italic_font = "JetBrainsMono Nerd Font Mono Extra Bold Italic";
      font_family = "JetBrainsMono Nerd Font Mono";
    };
    themeFile = "Catppuccin-Mocha";
  };
}
