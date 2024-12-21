{ ... }:
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
      font_family = "JetBrainsMono Nerd Font Mono";
      bold_font = "JetBrainsMono Nerd Font Mono Extra Bold";
      bold_italic_font = "JetBrainsMono Nerd Font Mono Extra Bold Italic";
      enable_audio_bell = false;
    };
    keybindings = {
      "ctrl+shift+f" =
        "launch --type=overlay --stdin-source=@screen_scrollback fzf --no-sort --no-mouse --exact -i";
    };
    themeFile = "Catppuccin-Mocha";
  };
}
