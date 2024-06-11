{ pkgs, ... }:
let 
  notwaita-cursor = import ../../../derivations/notwaita-cursor.nix { inherit pkgs; };
in {
  gtk = {
      enable = true;
      theme.name = "Nordic";
      iconTheme.name = "Nordzy";
      cursorTheme = {
        package = notwaita-cursor;
        name = "Notwaita-Black";
        size = 22;
      };
  };
}