{ pkgs, ... }: {
	services.xserver = {
		enable = true;
		displayManager = {
			sddm.enable = true;
			sddm.theme = "${import ../pkgs/sddm-flower-theme.nix { inherit pkgs; }}";
			setupCommands = "echo test >> /home/filip/wlrrandr.log; ${pkgs.xorg.xrandr}/bin/xrandr --output HDMI-A-4 --off &>> /home/filip/wlrrandr.log";
		};
	};
}
