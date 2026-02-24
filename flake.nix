{
  description = "NixOS by ArielS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs }:
  let
    system = "x86_64-linux";
  in {
    nixosConfigurations.nixos-gaming =
      nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
        ];
      };
  };
}
