{ lib, ... }: {
	config.programs.haguichi.enable = true;
	
	config.system.activationScripts.makeHamachiConfig = lib.stringAfter [ "var" ] ''
mkdir -p /var/lib/logmein-hamachi
echo "Ipc.User filip" > /var/lib/logmein-hamachi/h2-engine-override.cfg
	'';
}
