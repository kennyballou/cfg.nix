{ config, ... }:
{
  # Enable touchpad support.
  services.xserver.libinput = {
    enable = true;
    accelProfile = "adaptive";
    accelSpeed = "0.1";
    disableWhileTyping = true;
    scrollMethod = "twofinger";
    horizontalScrolling = false;
  };
}
