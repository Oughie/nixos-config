{ config, pkgs, ... }:
let
  inherit (config.lib.formats.rasi) mkLiteral;
in
{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    font = "Noto Sans Medium 11";

    theme = {
      configuration = {
        display-drun = "Applications:";
        display-window = "Windows:";
        display-run = "Execute:";
        drun-display-format = "{icon}  {name}";
        modi = "window,run,drun";
        show-icons = true;
        icon-theme = "Breeze-Dark";
      };

      "*" = {
        "bg-col" = mkLiteral "#313244";
        "bg-col-light" = mkLiteral "#313244";
        "border-col" = mkLiteral "#f2cdcd91";
        "selected-col" = mkLiteral "#45475a";
        "primary" = mkLiteral "#f2cdcd";
        "fg-col" = mkLiteral "#c6d0f5";
        "fg-col2" = mkLiteral "#e78284";
        "grey" = mkLiteral "#737994";

        "width" = 600;
        "font" = "Noto Sans 11";
      };

      "element-text, element-icon, mode-switcher" = {
        background-color = mkLiteral "inherit";
        text-color = mkLiteral "inherit";
      };

      window = {
        height = mkLiteral "310px";
        border-color = mkLiteral "@border-col";
        background-color = mkLiteral "@bg-col";
        border = mkLiteral "6px";
        border-radius = mkLiteral "15px";
      };

      mainbox = {
        background-color = mkLiteral "@bg-col";
      };

      inputbar = {
        children = mkLiteral "[prompt, entry]";
        background-color = mkLiteral "@bg-col";
        border-radius = mkLiteral "5px";
      };

      prompt = {
        background-color = mkLiteral "@primary";
        padding = mkLiteral "8px";
        text-color = mkLiteral "@bg-col";
        border-radius = mkLiteral "15px";
        margin = mkLiteral "20px 0px 5px 20px";
      };

      entry = {
        padding = mkLiteral "6px";
        margin = mkLiteral "20px 0px 0px 10px";
        text-color = mkLiteral "@fg-col";
        background-color = mkLiteral "@bg-col";
      };

      listview = {
        border = mkLiteral "0px 0px 0px";
        padding = mkLiteral "6px 0px 0px";
        margin = mkLiteral "0px 20px 0px 20px";
        lines = 5;
        columns = 2;
        background-color = mkLiteral "@bg-col";
      };

      element = {
        padding = mkLiteral "8px";
        margin = mkLiteral "5px 0px 5px 0px";
        background-color = mkLiteral "@bg-col";
        text-color = mkLiteral "@fg-col";
        border-radius = mkLiteral "15px";
      };

      element-icon = {
        size = mkLiteral "25px";
      };

      "element selected" = {
        background-color = mkLiteral "@selected-col";
      };

      mode-switcher = {
        spacing = 0;
      };

      button = {
        padding = mkLiteral "10px";
        background-color = mkLiteral "@bg-col-light";
        text-color = mkLiteral "@grey";
        vertical-align = mkLiteral "0.5";
        horizontal-align = mkLiteral "0.5";
      };

      "button selected" = {
        background-color = mkLiteral "@bg-col";
      };

      message = {
        background-color = mkLiteral "@bg-col-light";
        margin = mkLiteral "2px";
        padding = mkLiteral "2px";
        border-radius = mkLiteral "5px";
      };

      textbox = {
        padding = mkLiteral "6px";
        margin = mkLiteral "20px 0px 0px 20px";
        text-color = mkLiteral "@primary";
        background-color = mkLiteral "@bg-col-light";
      };
    };
  };
}
