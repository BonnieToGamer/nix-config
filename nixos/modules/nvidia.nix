{ config, ... }: {
	programs.hyprland.enableNvidiaPatches = true;

	environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";	
	environment.sessionVariables.NIXOS_OZONE_WL = "1";

	hardware.nvidia.modesetting.enable = true;
	hardware.nvidia.powerManagement.enable = false;
	hardware.nvidia.powerManagement.finegrained = false;
	hardware.nvidia.open = false;
	hardware.nvidia.nvidiaSettings = true;

	hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.production;
}
