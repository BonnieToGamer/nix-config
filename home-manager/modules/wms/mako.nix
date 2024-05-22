{ config, ... }: {
	services.mako = {
		enable = true;
		sort = "-time";
		layer = "overlay";
		textColor = "#${config.colorScheme.colors.base05}";
		backgroundColor = "#${config.colorScheme.colors.base00}";
		width = 400;
		height = 60;
		borderSize = 2;
		borderColor = "#${config.colorScheme.colors.base04}";
		borderRadius = 4;
		icons = true;
		maxIconSize = 64;
		defaultTimeout = 5000;
		ignoreTimeout = true;
		font = "monospace 12";

		extraConfig = ''
[urgency=low]
border-color=#${config.colorScheme.colors.base04}

[urgency=normal]
border-color=#${config.colorScheme.colors.base0B}

[urgency=high]
border-color=#${config.colorScheme.colors.base08}
default-timeout=0
'';
	};

}
