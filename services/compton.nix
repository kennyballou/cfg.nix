{ config, ... }:
{
  # Enable Compton visual effects
  services.compton = {
    enable = true;
    fade = true;
    inactiveOpacity = "0.9";
    shadow = true;
    fadeDelta = 4;
  };
}
