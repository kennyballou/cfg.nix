{ config, ... }:
{
  services.xserver.videoDrivers = [
    "modesetting" "vesa"
  ];
}
