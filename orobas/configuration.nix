# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ ../hardware-configuration.nix
      ../secrets.nix
      ../overlays.nix
      ../services/clamav.nix
      ../services/firewall.nix
      ../services/dbus.nix
      ../services/docker.nix
      ../services/dnsmasq.nix
      ../services/sound.nix
      ../services/x11.nix
      ../services/x11-intel.nix
      ../services/x11-laptop.nix
      ../services/kde.nix
      ../services/haveged.nix
      ../services/printing.nix
      ../system/bluetooth.nix
      ../system/ca.nix
      ../system/documentation.nix
      ../system/fonts.nix
      ../system/console.nix
      ../system/i18n.nix
      ../system/networking.nix
      ../system/packages.nix
      ../system/timezone.nix
      ../system/users.nix
      ../system/wireshark.nix
      ../system/yubikey-gpg.nix
      ../programs/mtr.nix
      ../programs/gnupg.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.initrd.luks.devices.luks-9185ee93-a666-485c-a8c1-f96001a44ff9.device = "/dev/disk/by-uuid/9185ee93-a666-485c-a8c1-f96001a44ff9";
  boot.blacklistedKernelModules = [
    "ip_tables"
  ];

  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "orobas"; # Define your hostname.

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.03"; # Did you read the comment?

}
