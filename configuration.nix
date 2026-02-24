{
  imports = [
    ./hardware-configuration.nix
    ./modules/gpu.nix
    ./modules/audio.nix
    ./modules/steam.nix
    ./modules/vr.nix
    ./modules/kernel.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  time.timeZone = "America/Argentina/Buenos_Aires";
  i18n.defaultLocale = "es_AR.UTF-8";

  services.xserver.enable = true;
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma6.enable = true;
}