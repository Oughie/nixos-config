{
  programs.fastfetch = {
    enable = true;

    settings = {
      "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
      display = {
        color = "magenta";
        separator = "    ";
      };
      logo.source = ./icon.png;
      modules = [
        {
          type = "custom";
          format = " System";
        }
        {
          type = "title";
          key = " ";
        }
        {
          type = "os";
          key = " 󱄅";
          format = "{3}";
        }
        {
          type = "kernel";
          key = " ";
        }
        {
          type = "packages";
          key = " 󰏗";
        }
        {
          type = "custom";
          format = " ────────────────────────────────";
        }
        {
          type = "custom";
          format = " Hardware";
        }
        {
          type = "cpu";
          key = " ";
          format = "{}";
        }
        {
          type = "gpu";
          key = " ";
          format = "{1}, {3}";
        }
        {
          type = "memory";
          key = " ";
          format = "{1} / {2}";
        }
        {
          type = "disk";
          key = " ";
          format = "{1} / {2}";
        }
        {
          type = "custom";
          format = " ────────────────────────────────";
        }
        {
          type = "custom";
          format = " Profile";
        }
        {
          type = "wm";
          key = " 󰖯";
          format = "{}";
        }
        {
          type = "terminal";
          key = " ";
        }
        {
          type = "shell";
          key = " ";
        }
        {
          type = "uptime";
          key = " 󰥔";
        }
        {
          type = "custom";
          format = " ────────────────────────────────";
        }
        {
          type = "custom";
          format = " {#30}⬤ {#90}⬤ {#31}⬤ {#91}⬤ {#32}⬤ {#92}⬤ {#33}⬤ {#93}⬤ {#34}⬤ {#94}⬤ {#35}⬤ {#95}⬤ {#36}⬤ {#96}⬤ {#37}⬤ {#97}⬤ ";
        }
      ];
    };
  };
}
