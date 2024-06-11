{ pkgs, pkgs-unstable, ... }: {
  home.packages = 
  (with pkgs; [
    nordic
    nordzy-icon-theme
    apple-cursor

    # gaming
    prismlauncher
  ])

  ++

  (with pkgs-unstable; [
    clonehero
  ])

  ++

  ([
    (import ./derivations/moonscraper.nix { inherit pkgs; })
  ])

  ++

  (
    (import ./scripts/bundle.nix { inherit pkgs;  inherit pkgs-unstable; })
  );
}
