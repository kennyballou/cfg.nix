{ config, pkgs, ... }:
{
  # Enable the GNOME Desktop Environment.
  services.xserver = {
    displayManager.gdm = {
      enable = true;
    };
    desktopManager.gnome3.enable = true;
  };
  programs.dconf.enable = true;
  services.dbus.packages = with pkgs; [ gnome2.GConf ];
}
