{ ... }:

{
  networking.hostName = "ari-nixos";

  networking.networkmanager = {
    enable = true;
    wifi.powersave = false;
  };

  networking.useDHCP = false;
}