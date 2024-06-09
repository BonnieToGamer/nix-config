{ pkgs, pkgs-unstable }:
[
  (import ./rebuild.nix { inherit pkgs; })
  (import ./rebuild-home.nix { inherit pkgs; })
]