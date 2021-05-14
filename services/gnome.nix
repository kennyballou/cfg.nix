{ config, pkgs, ... }:
{
  # Enable the GNOME Desktop Environment.
  services.xserver = {
    displayManager.gdm = {
      enable = true;
      wayland = false;
    };
    desktopManager.gnome.enable = true;
  };
  environment.gnome.excludePackages = with pkgs; [
    gnome3.cheese
    gnome3.epiphany
    gnome3.gnome-maps
    gnome3.gnome-music
    gnome3.gnome-photos
    gnome3.geary
    gnome3.gedit
    gnome3.gnome-software
    gnome-tour
  ];
  programs.dconf.enable = true;
  services.dbus.packages = with pkgs; [ gnome2.GConf ];
  services.udev.packages = with pkgs; [
    gnome3.gnome-settings-daemon
  ];
}
