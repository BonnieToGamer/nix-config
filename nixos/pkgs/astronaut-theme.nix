{ pkgs }:
let
	configFile = ../themes/sddm-config.conf;
in pkgs.stdenv.mkDerivation {
	name = "sddm-theme";
	installPhase = ''
		mkdir -p $out
		cp -aR ./* $out
	'';
	src = pkgs.fetchFromGitHub {
		owner = "Keyitdev";
		repo = "sddm-astronaut-theme";
		rev = "ae6b7a4ad8d14da1cc3c3b712f1241b75dcfe836";
		sha256 = "150j42wn7b5agjlaaagdh9asmnz636dxpdvcaw5ckjdf7204g255";
	};
}
