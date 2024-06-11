let 
  notwaita-cursor = import ../../derivations/notwaita-cursor.nix { inherit pkgs; };
in {
  gtk = {
      enable = true;
      theme.name = "Nordic";
      cursorTheme.package = notwaita-cursor;
      cursorTheme.name = "Notwaita-Black";
      iconTheme.name = "Nordzy";
  };
}