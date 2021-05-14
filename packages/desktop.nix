{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    calibre
    freecad
    gimp
    gnome-applications
    picard
    vlc
    xorg.xev
    xorg.xkill
  ];
}
