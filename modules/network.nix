{ ... }:

{
  networking.hostName = "ari-nixos";

  networking.networkmanager = {
    enable = true;
    wifi.powersave = false;
  };

  # NetworkManager gestiona DHCP por su cuenta
  networking.useDHCP = false;

  networking.firewall.enable = true;
}
