{ pkgs, pkgs-unstable, ... }: {
	nixpkgs.config = {
		allowUnfree = true;
		permittedInsecurePackages = [ "python-2.7.18.7" ];
	};

	environment.systemPackages = 
	(with pkgs; [
		# desktop apps
		firefox
		alacritty
		rofi-wayland
		wofi
		mpv
		discord
		gparted
		gnome.gnome-disk-utility
		cinnamon.nemo
		
		# coding stuff
		vscode
		gnumake
		gcc
		nodejs
		python

		# cli utils
		neofetch
		wget
		git
		htop
		unzip
		ffmpeg
		zip
		swww
		vim
		p7zip
		
		# gui utils
		feh
		mako
		networkmanagerapplet
		
		# Sound
		pipewire
		pulseaudio
		pamixer
	
		# GPU stuff
		amdvlk
		rocm-opencl-icd
		glaxnimate
	
		# Screenshotting
		sway-contrib.grimshot

		# Other
		home-manager
		
	])

	++

	(with pkgs-unstable; [
		hyprland
		hyprlock
		xwayland
		wl-clipboard
		xdg-desktop-portal-hyprland
		waybar
	]);

	fonts.packages = with pkgs; [
		jetbrains-mono
		noto-fonts
		noto-fonts-emoji
		twemoji-color-font
		font-awesome
		powerline-fonts
		powerline-symbols
		(nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
	];
}
