{ pkgs, ... }: {
	services.xserver = {
		enable = true;
		displayManager = {
			sddm.enable = true;
			sddm.theme = "${import ../pkgs/sddm-flower-theme.nix { inherit pkgs; }}";
			setupCommands = "xrandr --output HDMI-A-1 --off &>> /home/filip/xrandr-out.log";
		};
	};
}
