# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports = [
    ../hardware-configuration.nix
    ../overlays.nix
    ../programs/mtr.nix
    ../secrets.nix
    ../services/clamav.nix
    ../services/dbus.nix
    ../services/dnsmasq.nix
    ../services/firewall.nix
    ../services/gnome.nix
    ../services/haveged.nix
    ../services/printing.nix
    ../services/sound.nix
    ../services/x11-intel.nix
    ../services/x11-laptop.nix
    ../services/x11.nix
    ../system/bluetooth.nix
    ../system/ca.nix
    ../system/console.nix
    ../system/documentation.nix
    ../system/fonts.nix
    ../system/i18n.nix
    ../system/networking.nix
    ../system/nix.nix
    ../system/opengl.nix
    ../system/packages.nix
    ../system/security.nix
    ../system/timezone.nix
    ../system/users.nix
    ../system/wireshark.nix
    ../system/yubikey-gpg.nix
    ../unfree.nix
    ];

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

  boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.initrd.luks = {
    gpgSupport = true;
    devices = {
      luks-9e4050f4-5dce-4a64-88e8-61b82dd1d98b = {
        device = "/dev/disk/by-uuid/9e4050f4-5dce-4a64-88e8-61b82dd1d98b";
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

  networking.hostName = "daeva";

  nix.maxJobs = 4;
  # Only keep a week instead of 2
  nix.gc.options = "--delete-older-than 7d";

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "20.09"; # Did you read the comment?

}
