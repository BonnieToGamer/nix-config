{
	programs.waybar = {
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
				modules-right = [ "pulseaudio" "network" "tray" "clock" "custom/power" ];

				"hyprland/workspaces" = {
					disable-scroll = true;
					on-click = "activate";
					all-outputs = true;
					format = "{icon}";
					format-icons = {
						"1" = "";
						"2" = "";
						"3" = "";
						"4" = "";
						"5" = "";
						"6" = "";
						"7" = "";
						"8" = "";
						
						urgent = "";
						active = "";
						default = "";
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
					tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
					format-alt = "{:%Y-%m-%d}";
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
					format = "{volume}% {icon} {format_source}";
					format-muted = "󰝟 {format_source}";
					format-bluetooth = "{volume}% {icon} {format_source}";
					format-blueooth-muted = "󰝟 {icon} {format_source}";
					format-source = "{volume}% ";
					format-source-muted = "";
					format-icons = {
						headphone = "󰋋";
						hands-free = "󰋎";
						headset = "󰋎";
						phone = "";
						portable = "";
						car = "";
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
				
				"custom/separator" = {
					format = "{icon}";
					format-icons = "|";
					tooltip = false;
				};
			};
		};

		style = "${builtins.readFile ./waybar_style.css}"; 
	};
}
