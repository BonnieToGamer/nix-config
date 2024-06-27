final: prev: 
{
  hyprland = prev.hyprland.overrideAttrs (oldAttrs: rec 
  {
    postInstall = oldAttrs.postInstall + ''
      desktopFile=$out/share/wayland-sessions/hyprland.desktop
      if [ -f "$desktopFile" ]; then
        sed -i 's/Name=Hyprland/Name=My Custom Hyprland/' "$desktopFile"
      fi
    '';
  });
}