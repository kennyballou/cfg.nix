{ config, pkgs, ... }:
{
  # Enable the GNOME Desktop Environment.
  services.xserver = {
    displayManager.gdm = {
      enable = true;
    };
    desktopManager.gnome3.enable = true;
  };
  environment.gnome3.excludePackages = with pkgs.gnome3; [
    cheese
    epiphany
    gnome-maps
    gnome-music
    gnome-photos
    geary
    gedit
    gnome-software
  ];
  programs.dconf.enable = true;
  services.dbus.packages = with pkgs; [ gnome2.GConf ];
  services.udev.packages = with pkgs; [
    gnome3.gnome-settings-daemon
  ];
}
