{
  services.dunst = {
    enable = true;
    settings = {
      global = {
        monitor = 0;
        follow = "none";
        width = 300;
        height = 300;
        origin = "top-right";
        offset = "10x40";
        scale = 0;
        notification_limit = 20;
        progress_bar = true;
        progress_bar_height = 10;
        progress_bar_frame_width = 1;
        progress_bar_min_width = 150;
        progress_bar_max_width = 300;
        progress_bar_corner_radius = 0;
        progress_bar_corners = "all";
        icon_corner_radius = 7;
        icon_corners = "all";
        indicate_hidden = "yes";
        separator_height = 0;
        padding = 8;
        horizontal_padding = 8;
        text_icon_padding = 0;
        frame_width = 0;
        frame_color = "#ffffff";
        gap_size = 10;
        separator_color = "frame";
        sort = "yes";
        font = "Noto Sans 10";
        line_height = 5;
        markup = "full";
        format = ''<b>%a</b>\n%s\n%b'';
        alignment = "left";
        vertical_alignment = "center";
        show_age_threshold = 60;
        ellipsize = "middle";
        ignore_newline = "no";
        stack_duplicates = false;
        hide_duplicate_count = true;
        show_indicators = "no";
        enable_recursive_icon_lookup = true;
        icon_position = "left";
        min_icon_size = 64;
        max_icon_size = 64;
        # icon_path = "/usr/share/icons/gnome/16x16/status/:/usr/share/icons/gnome/16x16/devices/";
        sticky_history = "yes";
        history_length = 20;
        dmenu = "/usr/bin/dmenu -p dunst:";
        browser = "xdg-open";
        always_run_script = true;
        title = "Dunst";
        class = "Dunst";
        corner_radius = 15;
        corners = "all";
        ignore_dbusclose = false;
        force_xwayland = false;
        force_xinerama = false;
        mouse_left_click = "do_action, close_current";
        mouse_middle_click = "close_all";
        mouse_right_click = "close_current";
      };

      experimental.per_monitor_dpi = false;

      urgency_low = {
        background = "#ff3446";
        foreground = "#99d1db";
      };

      urgency_normal = {
        background = "#303446";
        foreground = "#c6d0f5";
      };

      urgency_critical = {
        background = "#303446";
        foreground = "#ea999c";
      };
    };
  };
}
