{ config, pkgs, inputs, ... }: {
	imports = [
		./modules/bundle.nix
		./packages.nix
		inputs.nix-colors.homeManagerModules.default
	];

	home = {
		username = "filip";
		homeDirectory = "/home/filip";
		stateVersion = "23.11";
	};
	
	colorScheme = inputs.nix-colors.colorSchemes.tokyo-city-dark;
}
