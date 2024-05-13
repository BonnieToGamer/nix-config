{ pkgs, pkgs-unstable, ... }: {
	nixpkgs.config = {
		allowUnfree = true;
	};
	

	home.packages = 
	(with pkgs; [
		neofetch
		htop
		libnotify
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
	]);
}
