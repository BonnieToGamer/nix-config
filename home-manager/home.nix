{ config, pkgs, ... }: {
	imports = [
		./modules/bundle.nix
		./packages.nix
	];

	home = {
		username = "filip";
		homeDirectory = "/home/filip";
		stateVersion = "23.11";

		#packages = with pkgs; [
		#	neofetch
		#	htop
		#];
	};
}
