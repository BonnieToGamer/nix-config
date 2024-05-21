{ pkgs, lib, ... }: {
	stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";
	
	stylix.image = lib.stylix.types.wallpaper.from.image {
		file = ../themes/hesita-nix.png;
		polarity = "dark";
	};
}
