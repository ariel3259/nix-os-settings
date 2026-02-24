{ config, pkgs, ... }:

{
  users.users.ari = {
    isNormalUser = true;
    description = "ArielS";
    extraGroups = [
      "wheel"        # sudo
      "networkmanager"
      "audio"
      "video"
      "input"
    ];
    shell = pkgs.zsh; # o bash si preferís
  };

  users.defaultUserShell = pkgs.zsh;

  programs.zsh.enable = true;

  security.sudo.enable = true;
}