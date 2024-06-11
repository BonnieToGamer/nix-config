{ pkgs }:
pkgs.stdenv.fetchzip {
	name = "notwaita-cursor";
	src = pkgs.fetchurl {
		url = "https://github.com/ful1e5/notwaita-cursor/releases/download/v1.0.0-alpha1/Notwaita-Black.tar.xz";
		sha256 = "1ky7czkbjsi8isx9cxabdryavnk1ii1aizyznfbgxkva20spiw9z";
	};

	dontUnpack = true;

	installPhase = ''
		mkdir -p $out/share/icons/
		tar -xf $src -d $out/share/icons/
	'';
}
