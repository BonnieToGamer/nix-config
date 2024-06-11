{ pkgs }: 
pkgs.writeShellScriptBin "rebuild" ''

set -e

pushd ~/nix

if ${pkgs.git}/bin/git diff --quiet './root/*.nix'; then
	echo "No changes detected, exiting."
	popd
	exit 0
fi

${pkgs.git}/bin/git diff -U0 '*.nix'
${pkgs.git}/bin/git add .

echo "Rebuilding NixOS"

sudo nixos-rebuild switch --flake ~/nix 2>&1 | tee ~/.nixos-rebuild.log || (exit 1)

commitMessage=$(nixos-rebuild list-generations | grep current)

${pkgs.git}/bin/git restore --staged ./home-manager

git commit -m "$commitMessage"

popd

${pkgs.libnotify}/bin/notify-send -e "Rebuilt config OK!" --icon=software-update-available
''
