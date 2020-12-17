{ config, ... }:
{
  services.xserver.videoDrivers = [
    "modesetting" "vesa" "intel"
  ];
}
