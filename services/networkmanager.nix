{ config, ... }:
{
  networking.networkmanager = {
    enable = true;
    dns = "systemd-resolved";
  };
}
