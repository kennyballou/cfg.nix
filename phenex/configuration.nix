# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ /etc/nixos/hardware-configuration.nix
      /etc/nixos/secrets.nix
      /etc/nixos/overlays.nix
      /etc/nixos/services/clamav.nix
      /etc/nixos/services/firewall.nix
      /etc/nixos/services/docker.nix
      /etc/nixos/services/dnsmasq.nix
      /etc/nixos/services/sound.nix
      /etc/nixos/services/x11.nix
      /etc/nixos/services/x11-laptop.nix
      /etc/nixos/services/kde.nix
      /etc/nixos/services/compton.nix
      /etc/nixos/services/haveged.nix
      /etc/nixos/system/ca.nix
      /etc/nixos/system/fonts.nix
      /etc/nixos/system/i18n.nix
      /etc/nixos/system/networking.nix
      /etc/nixos/system/packages.nix
      /etc/nixos/system/timezone.nix
      /etc/nixos/system/users.nix
      /etc/nixos/system/yubikey-gpg.nix
    ];

  networking.hostName = "phenex";

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.mtr.enable = true;
  programs.gnupg.agent = { enable = true; enableSSHSupport = true; };

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.03"; # Did you read the comment?

}
