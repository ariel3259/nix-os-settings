{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    steamvr
  ];
}