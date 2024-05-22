{ pkgs, ... }: {
	hardware.bluetooth = {
		enable = true;
		powerOnBoot = true;
		package = pkgs.bluez;
		settings = {
			General = {
				ControllerMode = "dual";
				Enable = "Source,Sink,Media,HID";
				Class = "0x000540";
			};
		};

		input = {
			General = {
				UserspaceHID = true;
			};
		};
	};

	services.blueman.enable = true;
}
