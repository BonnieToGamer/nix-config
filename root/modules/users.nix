{ pkgs, ... }: {

	users = {
		# defaultUserShell = pkgs.zsh

		users.filip = {
			isNormalUser = true;
			description = "filip";
			extraGroups = [ "networkmanager" "wheel" "polkitd" ];
			packages = with pkgs; [];
		};
	};
}
