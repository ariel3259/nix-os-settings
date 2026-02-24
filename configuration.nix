{
  imports = [
    ./hardware-configuration.nix
    ./modules/gpu.nix
    ./modules/audio.nix
    ./modules/steam.nix
    ./modules/vr.nix
    ./modules/kernel.nix
    ./modules/network.nix
    ./modules/users.nix
    ./modules/bluetooth.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config.allowUnfree = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  time.timeZone = "America/Argentina/Buenos_Aires";
  i18n.defaultLocale = "es_AR.UTF-8";

  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  system.stateVersion = "25.11";
}
