{ config }:

let
  colorScheme = config.colorScheme;
  colors = colorScheme.palette;

  placeholders = [ "$$base00$$" "$$base01$$" "$$base02$$" "$$base03$$" "$$base04$$" "$$base05$$" "$$base06$$" "$$base07$$" "$$base08$$" "$$base09$$" "$$base0A$$" "$$base0B$$" "$$base0C$$" "$$base0D$$" "$$base0E$$" ];
  colorValues = [ colors.base00 colors.base01 colors.base02 colors.base03 colors.base04 colors.base05 colors.base06 colors.base07 colors.base08 colors.base09 colors.base0A colors.base0B colors.base0C colors.base0D colors.base0E ];

  replaceColors = file: builtins.replaceStrings placeholders colorValues file;

in
{
  replaceColors = replaceColors;
}