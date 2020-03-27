{ config, ... }:
{
  # Enable touchpad support.
  services.xserver.libinput = {
    enable = true;
    scrollMethod = "twofinger";
    horizontalScrolling = false;
  };
}
