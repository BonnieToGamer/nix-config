{ pkgs, ... }: {
	stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";
	
	stylix.image = ../themes/hesita-nix.png;
}
