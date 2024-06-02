{ pkgs, ... }: {
	services = {
		xserver = {
			enable = true;
			displayManager = {
				setupCommands = "${pkgs.xorg.xrandr}/bin/xrandr --output HDMI-0 --off";
			};
		};

		displayManager = {
			sddm = {
				enable = true;
				theme = "${import ../../derivations/sddm-flower-theme.nix { inherit pkgs; }}";
			};
		};
	};
}
