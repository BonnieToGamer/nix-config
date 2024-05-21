{

	description = "My system config";
	
	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
		nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";	

		home-manager = {
			url = "github:nix-community/home-manager/release-23.11";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		
		nix-colors.url = "github:misterio77/nix-colors";
	};

	outputs = { nixpkgs, nixpkgs-unstable, home-manager, ... }@inputs:
		let
			system = "x86_64-linux";
			commonArgs = { inherit system; config.allowUnfree = true; };
			pkgs = import nixpkgs commonArgs;
			pkgs-unstable = import nixpkgs-unstable commonArgs;
		in {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			inherit system;
			specialArgs = {
				inherit pkgs-unstable;
			};

			modules = [ 
				./nixos/configuration.nix
			];
		};

		homeConfigurations.filip = home-manager.lib.homeManagerConfiguration {
			inherit pkgs;
			#pkgs = nixpkgs.legacyPackages.${system};
			modules = [ ./home-manager/home.nix ];
			extraSpecialArgs = {
				inherit pkgs-unstable;
				inherit inputs;
			};
		}; 
	};
}
