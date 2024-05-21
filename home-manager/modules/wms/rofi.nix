{
	programs.rofi = {
		enable = true;
		#theme = ../../themes/rofi-squared-menu.rasi;
		location = "center";
		theme = {
			"*" = {
				font =   "FiraCode Nerd Font Medium 12";

				bg0 =     "#333333";
				bg1 =     "#474747";
				fg0 =     "#D8DEE9";

				accent-color =     "#BBCCDD";
				urgent-color =     "#EBCB8B";

				background-color =   "transparent";
				text-color =         "@fg0";

				margin  =    0;
				padding =    0;
				spacing =    0;
			};

			window = {
				location =   "center";
				width =      480;

				background-color =   "@bg0";
			};

			inputbar = {
				spacing =    "8px"; 
				padding =    "8px";

				background-color =   "@bg1";
			};

			prompt.vertical-align = "0.5";
			entry.vertical-align = "0.5";
			"element-icon".vertical-align = "0.5";
			"element-text".vertical-align = "0.5";


			prompt = {
				text-color = "@accent-color";
			};

			textbox = {
				padding =            "8px";
				background-color =   "@bg1";
			};

			listview = {
				padding =    "4px 0";
				lines =      8;
				columns =    1;

				fixed-height =   true;
			};

			element = {
				padding =    "8px";
				spacing =    "8px";
			};

			"element normal normal" = {
				text-color = "@fg0";
			};

			"element normal urgent" = {
				text-color = "@urgent-color";
			};

			"element normal active" = {
				text-color = "@accent-color";
			};

			"element selected" = {
				text-color = "@bg0";
			};

			"element selected normal, element selected active" = {
				background-color =   "@accent-color";
			};

			"element selected urgent" = {
				background-color =   "@urgent-color";
			};

			element-icon = {
				size =   "0.8em";
			};

			element-text = {
				text-color = "inherit";
			};
		};
	};
}
