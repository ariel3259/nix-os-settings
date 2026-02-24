{ ... }:

{
  networking.hostName = "ari-nixos";

  networking.networkmanager.enable = true;

  # Importante para Wi-Fi
  networking.useDHCP = false;
}