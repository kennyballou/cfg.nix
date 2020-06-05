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
      ../services/docker.nix
      ../services/dnsmasq.nix
      ../services/sound.nix
      ../services/x11.nix
      ../services/x11-laptop.nix
      ../services/x11-amdgpu.nix
      ../services/kde.nix
      ../services/dbus.nix
      ../services/haveged.nix
      ../services/sshd.nix
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
      ../programs/gnupg.nix
      ./packages.nix
    ];

  networking.hostName = "eligos";

  # Use the GRUB 2 boot loader.
  boot.loader.systemd-boot = {
    enable = true;
    editor = false;
  };
  boot.loader.efi = {
    canTouchEfiVariables = false;
  };
  boot.loader.grub = {
    enable = true;
    copyKernels = true;
    efiInstallAsRemovable = true;
    efiSupport = true;
    fsIdentifier = "uuid";
    splashMode = "stretch";
    version = 2;
    device = "nodev";
    extraEntries = ''
      menuentry "Reboot" {
        reboot
      }
      menuentry "Poweroff" {
        halt
      }
    '';
  };

  boot.initrd.luks = {
    reusePassphrases = true;
    gpgSupport = true;
    devices = {
      cvg0 = {
        device = "/dev/disk/by-uuid/5cd9cc98-a22c-48f3-87ef-00a04f6d3500";
        gpgCard = {
          publicKey = ./public.asc;
          encryptedPass = ./luks-passphrase-cvg0.asc;
        };
      };
      cvg1 = {
        device = "/dev/disk/by-uuid/93479577-1b78-4b2c-b7c3-a1f905d19e54";
        fallbackToPassword = true;
        gpgCard = {
          publicKey = ./public.asc;
          encryptedPass = ./luks-passphrase-cvg1.asc;
        };
      };
      cvg2 = {
        device = "/dev/disk/by-uuid/4520c49c-12da-47ba-a9d1-1f53cd586cdd";
        fallbackToPassword = true;
        gpgCard = {
          publicKey = ./public.asc;
          encryptedPass = ./luks-passphrase-cvg2.asc;
        };
      };
    };
  };

  boot.blacklistedKernelModules = [
    "iptables"
  ];

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.03"; # Did you read the comment?

}
