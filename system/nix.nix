{ config, pkgs, ... }:
{
  nix = {
    trustedUsers = [ "@wheel" ];
    daemonIONiceLevel = 3;
    daemonNiceLevel = 17;
    gc = {
      automatic = true;
      options = "--delete-older-than 14d";
    };
    optimise = {
      automatic = true;
      dates = [ "Sun 03:45" ];
    };
  };
}
