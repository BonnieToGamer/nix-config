{
	boot.loader = {
		systemd-boot.enable = true;
		efi.canTouchEfiVariables = true;
	};
	
	boot.initrd.kernelModules = [ "amdgpu" "nvidia" "nvidia_modeset" "nvidia_uvm" "nvidia_drm" ];
	boot.kernelParams = [ "nvidia-drm.modeset=1" ];
	
	boot.supportedFilesystems = [ "ntfs" ];
}
