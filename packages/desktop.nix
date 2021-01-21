{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    calibre
    freecad
    gimp
    gnome-applications
    picard
    xorg.xev
  ];
}
