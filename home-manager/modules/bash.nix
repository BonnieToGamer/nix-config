{

	programs.bash = {
		enable = true;
		shellAliases = let
			flakePath = "~/nix";
		in {
			#rebuild = "sudo nixos-rebuild switch --flake ${flakePath}";
			#rebuild-home = "home-manager switch --flake ${flakePath}";
			v = "vim";
		};
	};		
}
