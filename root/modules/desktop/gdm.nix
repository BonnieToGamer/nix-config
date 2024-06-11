{ pkgs, ... }: {
  services.xserver = {
    enable = true;
    displayManager = {
      setupCommands = "${pkgs.xorg.xrandr}/bin/xrandr --output HDMI-0 --off";
      gdm = {
        enable = true;
        wayland = true;
      };
    };
  };
}
