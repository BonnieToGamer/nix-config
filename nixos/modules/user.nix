{ pkgs, ... }: {

	users = {
		# defaultUserShell = pkgs.zsh

		users.filip = {
			isNormalUser = true;
			description = "filip";
			extraGroups = [ "networkmanager" "wheel" ];
			packages = with pkgs; [];
		};
	};

	services.getty.autologinUser = "filip";
}
