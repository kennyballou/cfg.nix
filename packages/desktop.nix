{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    calibre
    freecad
    gimp
    kde-applications
    picard
    vlc
    xorg.xev
    xorg.xkill
  ];
}
