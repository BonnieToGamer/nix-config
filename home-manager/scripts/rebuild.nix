{ pkgs }: 
pkgs.writeShellScriptBin "rebuild" ''

set -e

pushd ~/nix

if [[ "$1" != "home" && "$1" != "" ]]; then
	echo "Usage rebuild (home|[empty])"
	popd
	exit 0
fi

if ${pkgs.git}/bin/git diff --quiet '*.nix'; then
	echo "No changes detected, exitin."
	popd
	exit 0
fi

${pkgs.git}/bin/git diff -U0 '*.nix'

commitMessage=""

if [[ "$1" == "home" ]]; then
	echo "Rebuilding home-manager"
	${pkgs.home-manager}/bin/home-manager switch --flake ~/nix &>~/.home-manager-rebuild.log || (cat ~/.home-manager-rebuild.log | grep --color error && exit 1)

	commitMessage="home-manager $(home-manager generations | head-n 1 | cut -d ' ' -f 1-5)"
else
	echo "Rebuilding NixOS"
	sudo nixos-rebuild switch --flake ~/nix &>~/.nixos-rebuild.log || (cat ~/.nixos-rebuild.log | grep --color error && exit 1)
	commitMessage=$(nixos-rebuild list-generations | grep current)
fi

git commit -am "$commitMessage"

popd

${pkgs.libnotify}/bin/notify-send -e "Rebuilt config OK!" --icon=software-update-available
''
