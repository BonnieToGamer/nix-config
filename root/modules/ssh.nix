{ pkgs, ... }: {
	programs.ssh = {
		enable = true;
		
		"*" = {
			extraOptions = {
				AddKeysToAgent = "yes";
				UseKeychain = "yes";
				IdentitiesOnly = "yes";
			};
		};
	};
}
