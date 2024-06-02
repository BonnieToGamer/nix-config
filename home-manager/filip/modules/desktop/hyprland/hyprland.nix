{ config, ... }: {
  wayland.windowManager.hyprland = with config.colorScheme.colors; {
    enable = true;
    xwayland.enable = true;

    settings = {
      "$mainMod" = "SUPER";		

      monitor = [
        "DP-1,2560x1440@171,1920x0,auto"
        "HDMI-A-1,1920x1080,0x0,auto"
      ];

      env = [
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "WLR_DRM_DEVICES,$HOME/.config/hypr/NVIDIAGpu:$HOME/.config/hypr/AMDGpu"
        "WLR_DRM_NO_ATOMIC,1"
      ];

      debug = {
        disable_logs = false;
        enable_stdout_logs = true;
      };

      input = {
        kb_layout = "se";
        kb_variant = "";
        kb_options = "caps:escape";
        
        follow_mouse = 1;

        touchpad = {
          natural_scroll = false;
        };

        sensitivity = 0;
      };

      general = {
        gaps_in = 5;
        gaps_out = 20;
        border_size = 2;
        "col.active_border" = "rgba(${base0D}ee) rgba(${base0B}ee) 45deg";
        "col.inactive_border" = "rgba(${base01}aa)";

        layout = "dwindle";
        
        no_cursor_warps = false;
        allow_tearing = false;
      };


      decoration = {
        rounding = 10;

        blur = {
          enabled = true;
          size = 3;
          passes = 1;
        };
        
        drop_shadow = true;
        shadow_range = 4;
        shadow_render_power = 3;
        "col.shadow" = "rgba(${base00}ee)";
      };

      animations = {
        enabled = true;
      
        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
        
        animation = [
          "windows,	1, 7,  myBezier"
          "windowsOut,	1, 7,  default, popin 80%"
          "border,	1, 10, default"
          "borderangle,	1, 8,  default"
          "fade,		1, 7,  default"
          "workspaces,	1, 6,  default"
        ];
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_is_master = true;
      };

      gestures = {
        workspace_swipe = false;
      };

      misc = {
        animate_manual_resizes = true;
        animate_mouse_windowdragging = true;
        enable_swallow = true;
        render_ahead_of_time = false;
        disable_hyprland_logo = true;				
      };

      windowrulev2 = [
        "float, title:^(imv)$"
        "float, title:^(mpv)$"
        
        "stayfocused, class:(Rofi)$"
        "forceinput, class:(Rofi)$"
      ];

      exec-once = [
        "swww init"
        "swww img ~/nix/home-manager/themes/hestia-nix.png"
        "waybar"
        "nm-applet --indicator"
        "dunst"
      ];

      workspace = [
        "1, monitor:DP-1, default:true"
        "2, monitor:HDMI-A-1, default:true"
      ];

      bind = [
        "$mainMod, Q, exec, alacritty"
        "$mainMod, C, killactive,"
        "$mainMod, M, exit,"
        "$mainMod, E, exec, nemo"
        "$mainMod, V, toggleFloating,"
        "$mainMod, D, exec, rofi -show drun -show-icons & sleep 0.1; hyprctl dispatch focuswindow \"^(Rofi)\""
        "$mainMod, P, pseudo,"
        "$mainMod, J, togglesplit,"
        "$mainMod SHIFT, S, exec, grimshot --notify copy area"


        # Move focus with mainMod + arrow keys
        "$mainMod, left,  movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up,    movefocus, u"
        "$mainMod, down,  movefocus, d"

        "$mainMod SHIFT, left,  swapwindow, l"
        "$mainMod SHIFT, right, swapwindow, r"
        "$mainMod SHIFT, up,    swapwindow, u"
        "$mainMod SHIFT, down,  swapwindow, d"

        # Window resizing                     X  Y
        "$mainMod CTRL, left,  resizeactive, -60 0"
        "$mainMod CTRL, right, resizeactive,  60 0"
        "$mainMod CTRL, up,    resizeactive,  0 -60"
        "$mainMod CTRL, down,  resizeactive,  0  60"
  
        # Switch workspaces with mainMod SHIFT + [0-9]
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2" 
        "$mainMod, 3, workspace, 3" 
        "$mainMod, 4, workspace, 4" 
        "$mainMod, 5, workspace, 5" 
        "$mainMod, 6, workspace, 6" 
        "$mainMod, 7, workspace, 7" 
        "$mainMod, 8, workspace, 8" 
        "$mainMod, 9, workspace, 9" 
        "$mainMod, 0, workspace, 0"

        "$mainMod, KP_End,    workspace, 1"
        "$mainMod, KP_Down,   workspace, 2" 
        "$mainMod, KP_Next,   workspace, 3" 
        "$mainMod, KP_Left,   workspace, 4" 
        "$mainMod, KP_Begin,  workspace, 5" 
        "$mainMod, KP_Right,  workspace, 6" 
        "$mainMod, KP_Home,   workspace, 7" 
        "$mainMod, KP_UP,     workspace, 8" 
        "$mainMod, KP_Prior,  workspace, 9" 
        "$mainMod, KP_Insert, workspace, 0"  


        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 0"

        # Scroll through existing workspaces with mainMod + scroll
        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"

        ", XF86AudioRaiseVolume, exec, pamixer -i 5"
        ", XF86AudioLowerVolume, exec, pamixer -d 5"
        ", XF86AudioMute, exec, pamixer -t"
        ", XF86AudioMicMute, exec, pamixer -- default-source -m"
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioPrev, exec, playerctl previous"
        
        "$mainMod, F, fullscreen, 1"
        "$mainMod Shift, F, fullscreen, 0"
        "ALT, Tab, cyclenext,"
        "ALT, Tab, bringactivetotop," 
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];
    };
  };
}
