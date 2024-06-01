{ pkgs, ... }: {
	services.xserver = {
		enable = true;
		displayManager = {
			sddm.enable = true;
			sddm.wayland.enable = true;
			sddm.theme = "${import ../pkgs/sddm-flower-theme.nix { inherit pkgs; }}";
			setupCommands = "${pkgs.wlr-randr}/bin/wlr-randr --output HDMI-A-1 --off &>> /home/filip/wlrrandr.log";
		};
	};
}
