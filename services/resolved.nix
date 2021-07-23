{ config, ... }:
{
  services.resolved = {
    enable = true;
    domains = [];
    fallbackDns = [
      "1.1.1.1#one.one.one.one"
      "1.0.0.1#one.one.one.one"
      "9.9.9.9#dns.quad9.net"
      "8.8.8.8#dns.google"
      "8.8.4.4#dns.google"
      "2606:4700:4700::1111#one.one.one.one"
      "2606:4700:4700::1001#one.one.one.one"
      "2620:fe::fe#quad9.net"
      "2620:fe::9#quad9.net"
    ];
    extraConfig = ''
      DNSOverTLS=yes
    '';
  };
}
