{ config, pkgs, ... }:
{
  # Enable LightDM Display Manager
  services.xserver = {
    displayManager.lightdm = {
      enable = true;
    };
  };
}
