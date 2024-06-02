{ pkgs, pkgs-unstable }:
[
  (import ./start-clonehero.nix { inherit pkgs-unstable; })
  (import ./add-clonehero-song.nix { inherit pkgs; })
  (import ./powermenu.nix { inherit pkgs; })
  (import ./git-identity.nix { inherit pkgs; })
]