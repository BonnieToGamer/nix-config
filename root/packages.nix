{ pkgs, pkgs-unstable, ... }:  
{
  nixpkgs.config = {
    allowUnfree = true;
		permittedInsecurePackages = [ "python-2.7.18.8" ];
	};

  environment.systemPackages = (with pkgs; 
  [
    # desktop apps
    firefox
    alacritty
    rofi-wayland
    rofi-power-menu
    mpv
    vesktop
    gnome.file-roller
    cinnamon.nemo-with-extensions
    cinnamon.nemo-fileroller
    spotify
    audacity
    notepad-next
    zathura
    sxiv
    gpt4all
    brasero

    libsForQt5.qt5.qtquickcontrols2
    libsForQt5.qt5.qtgraphicaleffects
		
    # coding stuff
    vscode-fhs
    gnumake
    gcc
    nodejs
    python
    godot_4
    godot_4-export-templates

    # cli utils
    fastfetch
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
    playerctl
    htop
    nix-prefetch-git
    wlr-randr
		libnotify
    fzf
    fontpreview

    # gui utils
    mako
    networkmanagerapplet
    pavucontrol
    easyeffects
    dmenu
    xlockmore
    winetricks
    wineWowPackages.waylandFull
    ventoy-full
    
    # Sound
    pipewire
    pulseaudio
    pamixer
  
    # Screenshotting
    sway-contrib.grimshot

    # Gaming
    lutris

    # Other
    home-manager
    #egl-wayland
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
  ])

  ++

  (
    (import ./scripts/bundle.nix { inherit pkgs;  inherit pkgs-unstable; })
  );

  fonts.packages = with pkgs; [
    dejavu_fonts
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
