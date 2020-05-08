{ config, pkgs, ... }:
{
  # eligos packages
  environment.systemPackages = with pkgs; [
    calibre
    freecad
    picard
  ];
}
