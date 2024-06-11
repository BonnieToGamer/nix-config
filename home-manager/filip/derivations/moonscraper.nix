{ pkgs }:
pkgs.stdenv.mkDerivation {
	name = "notwaita-cursor";
	src = pkgs.fetchurl {
		url = "https://github.com/FireFox2000000/Moonscraper-Chart-Editor/releases/download/1.5.6/Moonscraper.Chart.Editor.v1.5.6.Linux.Universal.tar.gz";
		sha256 = "01n9cqzbfl3ggl7ryxldlcs731542mr9ali14a8sx46j0yf76wbg";
	};

  dontUnpack = true;

	installPhase = ''
		mkdir -p $out
		tar -xf $src -C $out
	'';
}
