{ config, ... }:
{
  services.xserver.videoDrivers = [
    "intel" "vesa"
  ];
}
