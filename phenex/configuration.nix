# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ ../hardware-configuration.nix
      ../secrets.nix
      ../overlays.nix
      ../unfree.nix
      ../services/clamav.nix
      ../services/firewall.nix
      ../services/docker.nix
      ../services/dnsmasq.nix
      ../services/sound.nix
      ../services/x11.nix
      ../services/x11-intel.nix
      ../services/x11-laptop.nix
      ../services/gnome.nix
      ../services/dbus.nix
      ../services/haveged.nix
      ../services/printing.nix
      ../system/bluetooth.nix
      ../system/ca.nix
      ../system/console.nix
      ../system/documentation.nix
      ../system/fonts.nix
      ../system/i18n.nix
      ../system/networking.nix
      ../system/packages.nix
      ../system/security.nix
      ../system/timezone.nix
      ../system/users.nix
      ../system/wireshark.nix
      ../system/yubikey-gpg.nix
      ../programs/mtr.nix
      ../system/nix.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.devices = [
      "/dev/disk/by-id/wwn-0x5002538e000c21b7"
      "/dev/disk/by-id/wwn-0x5002538e40de02bf"
  ];
  boot.initrd.luks = {
    gpgSupport = true;
    devices = {
      cryptroot = {
        device = "/dev/disk/by-uuid/64dbda22-7a05-4d1c-a64b-bbbc779f1bdc";
        gpgCard = {
          publicKey = ./public.asc;
          encryptedPass = ./luks-passphrase.asc;
        };
      };
    };
  };
  boot.blacklistedKernelModules = [
    "iptables"
  ];

  networking.hostName = "phenex";

  services.xserver.displayManager.gdm.wayland = false;

  # Only keep a week instead of 2
  nix.gc.options = "--delete-older-than 7d";

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.03"; # Did you read the comment?

}
