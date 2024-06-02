{
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };
  
  #boot.kernelModules = [ "hidp" ];
  
  boot.supportedFilesystems = [ "ntfs" ];
}
