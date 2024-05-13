{
	programs.waybar = {
		enable = true;
		settings {
			mainBar = {
				layer = "top";
				position = "top";
				height = 30;
				margin = "5 5 0 5";
				spacing = 1;				

				modules-left = [ "hyprland/workspaces" ];
				modules-center = [ "hyprland/window" ];
				module-right = [ "pulseaudio", "network", "tray", "clock" ]; #, "custom/separator", "custom/power" ];

				"hyprland/workspaces" = {
					disable-scroll = true;
					on-click = "activate";
					all-outputs = true;
					format = "{icon}";
					format-icons = {
						1 = "";
						2 = "";
						3 = "";
						4 = "";
						5 = "";
						6 = "";
						7 = "";
						8 = "";
						
						urgent = "";
						active = "";
						default = "";
					};
				};
			};
