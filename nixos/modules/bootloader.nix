{
	boot.loader = {
		systemd-boot.enable = true;
		efi.canTouchEfiVariables = true;
	};
	
	boot.initrd.kernelModules = [ "nvidia" "nvidia_modeset" "nvidia_uvm" "nvidia_drm" ];
	boot.kernelModules = [ "hidp" ];
	boot.kernelParams = [ "nvidia-drm.modeset=1" ];
	boot.extraModprobeConfig = '' options bluetooth disable_ertm=1 '';
	
	boot.supportedFilesystems = [ "ntfs" ];
}
