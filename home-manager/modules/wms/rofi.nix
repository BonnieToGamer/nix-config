{ config, ... }: {
	programs.rofi = let 
		rasi_file = "${builtins.readFile ../../themes/rofi-squared-menu.rasi}";
		in {
		enable = true;
		theme = "${builtins.replaceStrings [ "$$base00$$" "$$base01$$" "$$base02$$" "$$base03$$" "$$base04$$" "$$base05$$" "$$base06$$" "$$base07$$" "$$base08$$" "$$base09$$" "$$base0A$$" "$$base0B$$" "$$base0C$$" "$$base0D$$" "$$base0E$$"  ] [ config.colorScheme.colors.base00 config.colorScheme.colors.base01 config.colorScheme.colors.base02 config.colorScheme.colors.base03 config.colorScheme.colors.base04 config.colorScheme.colors.base05 config.colorScheme.colors.base06 config.colorScheme.colors.base07 config.colorScheme.colors.base08 config.colorScheme.colors.base09 config.colorScheme.colors.base0A config.colorScheme.colors.base0B config.colorScheme.colors.base0C config.colorScheme.colors.base0D config.colorScheme.colors.base0E ] rasi_file}"; 
	};
}
