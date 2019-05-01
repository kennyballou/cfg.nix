{ config, ... }:
{
  virtualisation.docker = {
    enable = true;
    autoPrune.enable = true;
    extraOptions = ''
    --dns=127.0.0.1 --iptables=false
    '';
    storageDriver = "btrfs";
  };
}