{ config, ... }:
{
  networking.networkmanager = {
    enable = true;
    # dnsmasq will handle this...
    dns = "none";
    appendNameservers = [
      "1.1.1.1"
      "1.0.0.1"
      "9.9.9.9"
      "208.67.222.222"
      "208.67.220.220"
    ];
  };
}
