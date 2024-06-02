{ pkgs }: 
pkgs.writeShellScriptBin "add-clonehero-song" ''
if [ $# -eq 0 ]; then
	echo "Usage: $0 <input_file_path>"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "Error: Input file does not exist"
	exit 1
fi

dest_dir="$HOME/.clonehero/Songs/Quickplay/"
mkdir -p "$dest_dir"

${pkgs.unzip}/bin/unzip -q "$1" -d "$dest_dir"
echo "File unzipped and moved to $dest_dir"
''
