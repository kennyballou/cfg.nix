{ config, ... }:
{
  virtualisation.docker = {
    enable = true;
    autoPrune.enable = true;
    extraOptions = ''
    --dns=172.17.0.1 --iptables=false
    '';
    storageDriver = "btrfs";
  };
}
