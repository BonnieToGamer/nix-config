{ pkgs }:
let
	rasiFile = "${builtins.readFile ./sessionMenu.rasi}";
	rasiFixed = "${builtins.replaceStrings [ "\n" ] [ " " ] rasiFile}";
in
	pkgs.writeShellScriptBin "powermenu" ''

${pkgs.rofi}/bin/rofi \
	-show power-menu \
	-modi power-menu:'rofi-power-menu --symbols-font "Symbols Nerd Font Mono" --choices=shutdown/reboot/lockscreen' \
	-font "Jetbrains Mono NF 16" \
	-theme-str 'window {width: 16em;} listview {lines: 3;}'

''
