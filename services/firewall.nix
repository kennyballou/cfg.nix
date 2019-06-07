{ config, ... }:
{
  # Firewall configuration
  networking.firewall.enable = false;
  networking.nftables.enable = true;
  networking.nftables.rulesetFile = ./nftables-rules.nft;
}
