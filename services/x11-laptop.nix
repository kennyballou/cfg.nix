{ config, ... }:
{
  # Enable touchpad support.
  services.xserver.libinput.enable = true;
  services.xserver.libinput.scrollMethod = "twofinger";
  services.xserver.libinput.horizontalScrolling = false;
}
