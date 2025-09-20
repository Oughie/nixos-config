{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/0075a3a3e43d0205773f6c1b08d2b75cabc6e388";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
    }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      homeConfigurations."luma" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [ ./home-manager ];
      };

      nixosConfigurations.samoyed = nixpkgs.lib.nixosSystem {
        modules = [ ./nixos ];
      };
    };
}
