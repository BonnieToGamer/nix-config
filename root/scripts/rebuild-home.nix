{ pkgs }: 
pkgs.writeShellScriptBin "rebuild-home" ''

set -e

pushd ~/nix

if ${pkgs.git}/bin/git diff --quiet './home-manager/*.nix'; then
	echo "No changes detected, exiting."
	popd
	exit 0
fi

${pkgs.git}/bin/git diff -U0 '*.nix'
${pkgs.git}/bin/git add .

echo "Rebuilding home-manager"

home-manager switch --flake ~/nix &>~/.home-manager-rebuild.log || (cat ~/.home-manager-rebuild.log | grep --color error && exit 1)

commitMessage="home-manager $(home-manager generations | head -n 1 | cut -d ' ' -f 1-5)"

${pkgs.git}/bin/git restore --staged ./root

git commit -am "$commitMessage"

popd

${pkgs.libnotify}/bin/notify-send -e "Rebuilt home-manager OK!" --icon=software-update-available
''
