{ pkgs }: 
pkgs.stdenv.mkDerivation {
	name = "ferium-gui";
	src = pkgs.fetchFromGitHub {
		owner = "DoggoNako";
		repo = "FeriumGUI";
		rev = "1516c9cfb37b9d237b244e3e8540ccd633a0df39";
		sha256 = "1d491hff1crw61r41y24i0k58sbj3gj0lzw4hsaxanvb4ja7nis0";
	};

	installPhase = ''
		mkdir -p $out
		cp -R ./* $out/
	'';
}
