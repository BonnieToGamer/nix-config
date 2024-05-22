{ config, ... }: 
let
	rofi_file = "${builtins.readFile ../../themes/rofi-squared-menu.rasi}";
in {
	programs.rofi = {
		enable = true;
		theme = "./theme.rasi";
		location = "center";
	};

	home.file.".config/rofi/theme.rasi".text = with config.colorScheme.colors; "${builtins.replaceStrings [ "$$base00$$" "$$base01$$" "$$base02$$" "$$base03$$" "$$base04$$" "$$base05$$" "$$base06$$" "$$base07$$" "$$base08$$" "$$base09$$" "$$base0A$$" "$$base0B$$" "$$base0C$$" "$$base0D$$" "$$base0E$$"  ] [ base00 base01 base02 base03 base04 base05 base06 base07 base08 base09 base0A base0B base0C base0D base0E ] rofi_file}";
}
