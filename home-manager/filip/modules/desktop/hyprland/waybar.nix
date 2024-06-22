{ config, ... }: {
  programs.waybar = let 
    colorReplacer = (import ../../../../../utils/replace-colors.nix { inherit config; });
    css_file = "${builtins.readFile ./static/waybar/waybar_style.css}";
  in {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        margin = "5 5 0 5";
        spacing = 1;	

        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "hyprland/window" ];
        modules-right = [ "network" "tray" "pulseaudio" "clock" "custom/power" ];

        "hyprland/workspaces" = {
          disable-scroll = true;
          on-click = "activate";
          all-outputs = true;
          format = "{id}";
          format-icons = {
            # "1" = "";
            "1" = "1";
            "2" = "2";
            "3" = "3";
            "4" = "4";
            "5" = "5";
            "6" = "6";
            "7" = "7";
            "8" = "8";
            
            # urgent = "";
            # active = "";
            # default = "";
          };
        };

        "hyprland/window" = {
          format = "{title}";
          max-length = 50;
          rewrite = {
            "filip@nixos(.*)" = " $1";
            "(.*) Mozilla Firefox" = "󰈹 $1";
          };	
        };

        tray = {
          spacing = 10;
        };

        clock = {
          format = "{:%I:%M}";
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
          format-alt = "{:%b %d}";
        };

        network = {
          format-wifi = "{essid} ({signalStrength}%) ";
          format-ethernet = "";
          tooltip-format = "{ifname} via {gwaddr} ";
          format-linked = "{ifname} (No IP) ";
          format-disconnected = "Disconnected ";
          format-alt = "{ifname}: {ipaddr}/{cidr}";	
        };

        pulseaudio = {
          format = "{volume}% {icon}";
          format-muted = "{volume}% 󰝟";
          format-bluetooth = "{volume}% {icon}";
          format-blueooth-muted = "󰝟 {icon}";
          format-icons = {
            default = ["" "" ""];
          };

          on-click = "pavucontrol";
        };

        "custom/power" = {
          format = "{icon}";
          format-icons = "";
          exec-on-event = true;
          on-click = "powermenu";
          tooltip = false;
        };
      };
    };

    style = colorReplacer.replaceColors css_file;
  };
}
