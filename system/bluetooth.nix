{ config, pkgs, ... }:
{
  hardware.bluetooth = {
    enable = true;
    package = pkgs.bluezFull;
    powerOnBoot = true;
    hsphfpd.enable = true;
    settings = {
      General = {
        DiscoverableTimeout = 60;
      };
    };
  };
}
