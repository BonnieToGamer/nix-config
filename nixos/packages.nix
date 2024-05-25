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
		rofi-power-menu
		mpv
		discord
		vesktop
		gparted
		gnome.gnome-disk-utility
		cinnamon.nemo
		gnome.file-roller
		cinnamon.nemo-fileroller
		spotify
		audacity
		
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
		radeontop
		intel-gpu-tools
		playerctl
		qt6.full
		qt6.qt5compat
		qt6.qtdeclarative
		qt6.qtsvg
		libsForQt5.qt5.qtquickcontrols2
		libsForQt5.qt5.qtgraphicaleffects

		# gui utils
		mako
		networkmanagerapplet
		pavucontrol
		easyeffects
		
		# Sound
		pipewire
		pulseaudio
		pamixer
	
		# GPU stuff
		#amdvlk
		#rocm-opencl-icd
		#glaxnimate
	
		# Screenshotting
		sway-contrib.grimshot

		# Gaming
		lutris

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
		xdg-utils

		logmein-hamachi
		haguichi
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
