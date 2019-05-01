{ config, ... }:
{
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "us";
  # services.xserver.xkbVarient = "";
  services.xserver.xkbOptions = "ctrl:nocaps";
}
