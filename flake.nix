{
  description = "NixOS Gaming System";

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
          ./hardware-configuration.nix
          ./modules/gpu.nix
          ./modules/audio.nix
          ./modules/steam.nix
          ./modules/vr.nix
          ./modules/kernel.nix
        ];
      };
  };
}