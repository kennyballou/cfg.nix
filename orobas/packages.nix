{ config, pkgs, ... }:
{
  # orobas packages
  environment.systemPackages = with pkgs; [
    gnome-applications
  ];
}
