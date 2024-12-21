{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs.follows = "nixos-cosmic/nixpkgs";
    nixos-cosmic.url = "github:lilyinstarlight/nixos-cosmic";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nixos-cosmic,
      home-manager,
    }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations = {
        samoyed = nixpkgs.lib.nixosSystem {
          modules = [
            {
              nix.settings = {
                substituters = [ "https://cosmic.cachix.org/" ];
                trusted-public-keys = [ "cosmic.cachix.org-1:Dya9IyXD4xdBehWjrkPv6rtxpmMdRel02smYzA85dPE=" ];
              };
            }
            nixos-cosmic.nixosModules.default
            ./nixos
          ];
        };
      };
      homeConfigurations."luma" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [ ./home-manager ];
      };
    };
}
