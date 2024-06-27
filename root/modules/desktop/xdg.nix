{ pkgs, ... }: {
  xdg = {
    portal.enable = true;
    extra-packages = [ xdg-desktop-portal-gtk ];
  };
}