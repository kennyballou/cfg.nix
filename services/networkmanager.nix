{ config, ... }:
{
  networking.networkmanager = {
    enable = true;
    # dnsmasq will handle this...
    dns = "none";
  };
}
