{ config, lib, pkgs, ... }:
{
  nix = {
    trustedUsers = [ "@wheel" ];
    daemonIONiceLevel = lib.mkDefault 3;
    daemonNiceLevel = lib.mkDefault 17;
    gc = {
      automatic = true;
      options = lib.mkDefault "--delete-older-than 14d";
    };
    optimise = {
      automatic = true;
      dates = [ "Sun 03:45" ];
    };
  };
}
