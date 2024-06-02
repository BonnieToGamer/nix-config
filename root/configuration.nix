{
	imports = [
		./hardware-configuration.nix
		./packages.nix
		./modules/bundle.nix
	];

	networking.hostName = "nixos";

	nix.settings.experimental-features = [ "nix-command" "flakes" ];

	time.timeZone = "Europe/Stockholm";

	i18n.defaultLocale = "en_US.UTF-8";

	system.stateVersion = "24.05"; # no touchy
}
