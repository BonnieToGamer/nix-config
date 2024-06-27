{ pkgs, ... }: {
  xdg = {
    portal.enable = true;
    extra-packages = [ pkgs.xdg-desktop-portal-gtk ];
  };
}