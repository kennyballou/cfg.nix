{ config, ... }:
{
  services.xserver.videoDrivers = [
    "amdgpu" "radeon" "vesa"
  ];
}
