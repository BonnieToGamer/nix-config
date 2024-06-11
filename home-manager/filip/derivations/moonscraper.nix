{ pkgs }:
pkgs.stdenv.mkDerivation {
	name = "MoonscraperChartEditor";
	src = pkgs.fetchurl {
		url = "https://github.com/FireFox2000000/Moonscraper-Chart-Editor/releases/download/1.5.6/Moonscraper.Chart.Editor.v1.5.6.Linux.Universal.tar.gz";
		sha256 = "01n9cqzbfl3ggl7ryxldlcs731542mr9ali14a8sx46j0yf76wbg";
	};

	installPhase = ''
    mkdir -p $out/bin/
    mkdir -p $out/share/

    install -Dm755 "Moonscraper Chart Editor.x86_64" "$out/bin/Moonscraper Chart Editor.x86_64"
    cp -r "Moonscraper Chart Editor_Data" "$out/share/Moonscraper Chart Editor_Data"
    cp -r "Custom Resources" "$out/share/Custom Resources"
    cp -r "Config" "$out/share/Config"

    ln -s "$out/share/Moonscraper Chart Editor_Data" "$out/bin/Moonscraper Chart Editor_Data"
    ln -s "$out/share/Custom Resources" "$out/bin/Custom Resources"
    ln -s "$out/share/Config" "$out/bin/Config"
	'';
}
