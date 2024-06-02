{ config, ... }: 
let
  colorReplacer = (import ../../../../../utils/replace-colors.nix { inherit config; });
  theme_file = "${builtins.readFile ./static/rofi/rofi-squared-menu.rasi}";
in {

  programs.rofi = {
    enable = true;
    theme = "./theme.rasi";
    location = "center";
  };

  home.file.".config/rofi/theme.rasi".text = colorReplacer.replaceColors theme_file;
}
