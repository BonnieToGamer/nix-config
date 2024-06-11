{ pkgs }: 
pkgs.writeShellScriptBin "rebuild" ''

set -e

pushd ~/nix

if ${pkgs.git}/bin/git diff --quiet './nixos/*.nix'; then
	echo "No changes detected, exiting."
	popd
	exit 0
fi

${pkgs.git}/bin/git diff -U0 '*.nix'
${pkgs.git}/bin/git add .

echo "Rebuilding NixOS"

sudo nixos-rebuild switch --flake ~/nix &>~/.nixos-rebuild.log || (cat ~/.nixos-rebuild.log | grep --color error && exit 1)

commitMessage=$(nixos-rebuild list-generations | grep current)

${pkgs.git}/bin/git restore --staged ./home-manager

git commit -m "$commitMessage"

popd

${pkgs.libnotify}/bin/notify-send -e "Rebuilt config OK!" --icon=software-update-available
''
