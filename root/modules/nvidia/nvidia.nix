{ config, ... }: {
	environment.sessionVariables.NIXOS_OZONE_WL = "1";

	hardware.nvidia = {
		modesetting.enable = true;
		powerManagement.enable = false;
		powerManagement.finegrained = false;
		open = false;
		nvidiaSettings = true;

		package = config.boot.kernelPackages.nvidiaPackages.stable;
	};
}
