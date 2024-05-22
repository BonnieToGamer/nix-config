{ config, ... }: {
	services.mako = with config.colorScheme.colors; {
		enable = true;
		sort = "-time";
		layer = "overlay";
		textColor = "#${base05}";
		backgroundColor = "#${base00}";
		width = 400;
		height = 60;
		borderSize = 2;
		borderColor = "#${base04}";
		borderRadius = 4;
		icons = true;
		maxIconSize = 64;
		defaultTimeout = 5000;
		ignoreTimeout = true;
		font = "monospace 10";

		extraConfig = ''
[urgency=low]
border-color=#${base04}

[urgency=normal]
border-color=#${base04}

[urgency=high]
border-color=#${base08}
default-timeout=0
'';
	};

}
