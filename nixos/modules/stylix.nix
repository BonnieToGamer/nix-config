{ pkgs, lib, ... }: {
	stylix = {
		base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";
		image = ../themes/hestia-nix.png;

		autoEnable = true;
	};
}
