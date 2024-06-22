{ pkgs-unstable }: 
pkgs-unstable.writeShellScriptBin "start-clonehero" ''
ulimit -n `ulimit -Hn`

while true; do
	${pkgs-unstable.clonehero}/bin/clonehero --force-wayland --force-vulkan
	if [ $? -eq 0 ]; then
		break
	fi
	sleep 3
done
''
