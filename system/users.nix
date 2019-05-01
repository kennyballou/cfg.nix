{ config, pkgs, ... }:
{
  # Disable mutable user configuration
  users.mutableUsers = false;
  # Local user accounts
  users.users.kb = {
      isNormalUser = true;
      uid = 1000;
      home = "/home/kb";
      shell = pkgs.zsh;
      extraGroups = [ "users"
                      "docker"
                      "wheel"
                      "networkmanager"
                      "systemd-journal"
      ];
  };
}
