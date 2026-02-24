{ pkgs, ... }:

{
  # WiVRn: streaming VR por WiFi (compatible con Quest, Pico, etc.)
  services.wivrn = {
    enable = true;
    openFirewall = true;
    defaultRuntime = true; # Lo establece como runtime OpenXR por defecto
  };

  environment.systemPackages = with pkgs; [
    wlx-overlay-s # Overlay de escritorio en VR
  ];
}
