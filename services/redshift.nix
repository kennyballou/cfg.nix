{ config, ... }:
{
  location = {
    latitude = 43.61;
    longitude = -116.201;
    provider = "manual";
  };
  services.redshift = {
    enable = true;
    temperature.day = 6500;
    temperature.night = 4000;
    extraOptions = [
      "-v"
      "-m randr"
    ];
  };
}
