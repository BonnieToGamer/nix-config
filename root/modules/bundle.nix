{
	imports = [
		./desktop/bundle.nix
		./bootloader.nix
		./locale.nix
		./users.nix
		#./ssh.nix

		# either add or switch with AMD GPU.
    ./nvidia/bundle.nix
	];
}
