with builtins;
{ config, ...}:
{
  services.dnsmasq = {
    servers = ["10.100.1.1"];
  };
}
