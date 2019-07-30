{ config, pkgs, ... }:
{
  # eligos packages
  environment.systemPackages = with pkgs; [
    calibre
    picard
  ];
}
