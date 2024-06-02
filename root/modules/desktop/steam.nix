{ pkgs, ... }: {
	programs.steam = {
		enable = true;
		gamescopeSession.enable = true;
	};

	environment = {
		systemPackages = with pkgs; [
			mangohud
			protonup
		];

		sessionVariables = {
			STEAM_EXTRA_COMPAT_TOOLS_PATHS = "/home/filip/.steam/root/compatibilitytools.d";
		};
	};

	programs.gamemode.enable = true;

	nixpkgs.config.packageOverrides = pkgs: {
		steam = pkgs.steam.override {
			extraPkgs = pkgs: with pkgs; [
				xorg.libXcursor
				xorg.libXi
				xorg.libXinerama
				xorg.libXScrnSaver
				libpng
				libpulseaudio
				libvorbis
				stdenv.cc.cc.lib
				libkrb5
				keyutils
			];
		};
	};
}
