{ pkgs, ... }:
{
  programs.bat = {
    enable = true;
    config.theme = "catppuccinMocha";
    themes = {
      catppuccinMocha = {
        file = "themes/Catppuccin Mocha.tmTheme";
        src = pkgs.fetchFromGitHub {
          owner = "catppuccin";
          repo = "bat";
          rev = "82e7ca555f805b53d2b377390e4ab38c20282e83";
          sha256 = "sha256-/Ob9iCVyjJDBCXlss9KwFQTuxybmSSzYRBZxOT10PZg=";
        };
      };
    };
  };
}
