{ config, pkgs, inputs, ... }: {
	imports = [
		./modules/bundle.nix
		./packages.nix
		inputs.nix-colors.homeManagerModules.default
		inputs.ags.homeManagerModules.default
	];

	home = {
		username = "filip";
		homeDirectory = "/home/filip";
		stateVersion = "24.05";
	};
	
	colorScheme = inputs.nix-colors.colorSchemes.nord;
}
