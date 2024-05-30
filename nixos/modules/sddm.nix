{ pkgs, ... }: {
	services.xserver = {
		enable = true;
		displayManager = {
			sddm.enable = true;
			sddm.theme = "${import ../pkgs/sddm-flower-theme.nix { inherit pkgs; }}";
			setupCommands = "${pkgs.xorg.xrandr}/bin/xrandr --output HDMI-A-1 --off ";
		};
	};
}
