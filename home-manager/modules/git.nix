{
	programs.git = {
		enable = true;
		userName = "BonnieToGamer";
		userEmail = "68508540+BonnieToGamer@users.noreply.github.com";
		
		extraConfig = {
			core = {
				sshCommand = "ssh -i ~/.ssh/id_ed25519_bonnie";
			};
		};

		includes =  [
			{
				contents = {
					user = {
						email = "119044858+Flillip@users.noreply.github.com";
					};

					core = {
						sshCommand = "ssh -i ~/.ssh/id_ed25519_flillip";
					};
				};
				
				condition = "hasconfig:remote.*.url:git@github.com:flillip/*";
			}
		];
	};
}
