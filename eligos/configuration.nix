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
      ../services/kde.nix
      ../services/dbus.nix
      ../services/haveged.nix
      ../services/sshd.nix
      ../services/syncthing.nix
      ../system/ca.nix
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
    devices = {
      cvg0.device = "/dev/disk/by-uuid/5cd9cc98-a22c-48f3-87ef-00a04f6d3500";
      cvg1 = {
        device = "/dev/disk/by-uuid/93479577-1b78-4b2c-b7c3-a1f905d19e54";
        keyFile = "/etc/cvg1";
        fallbackToPassword = true;
      };
      cvg2 = {
        device = "/dev/disk/by-uuid/4520c49c-12da-47ba-a9d1-1f53cd586cdd";
        keyFile = "/etc/cvg2";
        fallbackToPassword = true;
      };
    };
  };

  boot.blacklistedKernelModules = [
    "iptables"
  ];

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
