{
  programs.hyprlock = {
    enable = true;
    settings = {
      background = {
        path = "/home/filip/nix/home-manager/filip/modules/desktop/hyprland/static/wallpapers/86.png";
        blur_passes = 2;
        hide_cursor = true;
      };

      general = {
        monitor = "DP-1";
        no_fade_in = false;
        grace = 0;
        disable_loading_bar = true;
      };

      input-field = {
        monitor = "DP-1";
        size = "250, 60";
        outline_thickness = 2;
        dots_size = 0.2; # Scale of input-field height, 0.2 - 0.8
        dots_spacing = 0.2; # Scale of dots' absolute size, 0.0 - 1.0
        dots_center = true;
        outer_color = "rgba(0, 0, 0, 0)";
        inner_color = "rgba(0, 0, 0, 0.5)";
        font_color = "rgb(200, 200, 200)";
        fade_on_empty = false;
        font_family = "JetBrains Mono Nerd Font Mono";
        placeholder_text = "<i><span foreground=\"##cdd6f4\">Input Password...</span></i>";
        hide_input = false;
        position = "0, -120";
        halign = "center";
        valign = "center";
      };

      # TIME
      label = [
        {
          monitor = "DP-1";
          text = "cmd[update:1000] echo \"$(date +\"%-I:%M%p\")\"";
          color = "$foreground";
          font_size = 100;
          font_family = "JetBrains Mono Nerd Font Mono ExtraBold";
          position = "0, -500";
          halign = "center";
          valign = "top";
        }

        {
          monitor = "DP-1";
          text = "cmd[update:1000] echo \"$(playerctl metadata --format '{{title}}  {{artist}}')\"";
          color = "$foreground";
          font_size = 18;
          font_family = "JetBrainsMono, Font Awesome 6 Free Solid";
          position = "0, -50";
          halign = "center";
          valign = "bottom";
        }
      ];
    };
  };
}