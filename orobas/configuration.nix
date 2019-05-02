# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ ./hardware-configuration.nix
      ./secrets.nix
      ./overlays.nix
      ./services/clamav.nix
      ./services/firewall.nix
      ./services/docker.nix
      ./services/dnsmasq.nix
      ./services/sound.nix
      ./services/x11.nix
      ./services/kde.nix
      ./services/compton.nix
      ./services/haveged.nix
      ./system/ca.nix
      ./system/i18n.nix
      ./system/networking.nix
      ./system/packages.nix
      ./system/timezone.nix
      ./system/users.nix
      ./system/yubikey-gpg.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "orobas"; # Define your hostname.

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.03"; # Did you read the comment?

}
