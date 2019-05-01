{ config, ... }:
{
  # Local DNS server
  services.dnsmasq.enable = true;
  services.dnsmasq.servers = [ "127.0.0.1#43" ];
}
