{ pkgs, pkgs-unstable, ... }: {
	nixpkgs.config = {
		allowUnfree = true;
	};
	

	home.packages = 
	(with pkgs; [
		neofetch
		htop
		libnotify
		nordic
		nordzy-icon-theme
		apple-cursor
		notepad-next
		zathura
		sxiv
		mpv
		lmms

		# gaming
		minecraft
		prismlauncher
		grapejuice
	])

	++

	(with pkgs-unstable; [
		clonehero
	])

	++

	([
		(import ./scripts/start-clonehero.nix { inherit pkgs-unstable; })
		(import ./scripts/add-clonehero-song.nix { inherit pkgs; })
		(import ./scripts/rebuild.nix { inherit pkgs; })
		(import ./scripts/rebuild-home.nix { inherit pkgs; })
		(import ./scripts/powermenu.nix { inherit pkgs; })
	]);
}
