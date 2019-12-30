{ config, ... }:
{
  # Firewall configuration
  networking.firewall.enable = false;
  networking.nftables.enable = true;
  networking.nftables.rulesetFile = builtins.toPath "/etc/nixos/${config.networking.hostName}/nftables-rules.nft";
}
