{
	boot.loader = {
		systemd-boot.enable = true;
		efi.canTouchEfiVariables = true;
		#boot.initrd.kernelModules = [ "amdgpu" ];
	};
	
	boot.supportedFilesystems = [ "ntfs" ];
}
