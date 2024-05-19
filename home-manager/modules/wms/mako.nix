{
	services.mako = {
		enable = true;
		sort = "-time";
		layer = "overlay";
		textColor = "#bbccdd";
		backgroundColor = "#333333";
		width = 400;
		height = 60;
		borderSize = 2;
		borderColor = "#88c0d0";
		borderRadius = 4;
		icons = true;
		maxIconSize = 64;
		defaultTimeout = 5000;
		ignoreTimeout = true;
		font = "monospace 14";

		extraConfig = ''
[urgency=low]
border-color=#66aabb

[urgency=normal]
border-color=#bbccdd

[urgency=high]
border-color=#ff6666
default-timeout=0
'';
	};

}
