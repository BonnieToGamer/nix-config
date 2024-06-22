{ pkgs, pkgs-unstable, ... }:
{
	environment.sessionVariables.NIXOS_OZONE_WL = "1";

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    package = pkgs-unstable.hyprland;
  };
}
