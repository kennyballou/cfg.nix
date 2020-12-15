{ config, pkgs, ... }:

{
  imports =
    [
      ../hardware-configuration.nix
      ../overlays.nix
      ../secrets.nix
      ../services/clamav.nix
      ../services/firewall.nix
      ../services/dnsmasq.nix
      ../services/dbus.nix
      ../services/haveged.nix
      ../services/sshd.nix
      ../services/nfs.nix
      ../system/ca.nix
      ../system/console.nix
      ../system/networking.nix
      ../system/security.nix
      ../system/timezone.nix
      ../system/users.nix
      ../system/base.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot = {
    enable = true;
    editor = false;
  };
  boot.loader.efi.canTouchEfiVariables = false;
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
      luks-d0d275e6-716c-44f1-9ab6-503ceef56310 = {
        device = "/dev/disk/by-uuid/d0d275e6-716c-44f1-9ab6-503ceef56310";
        fallbackToPassword = true;
        keyFileSize = 40960;
        keyFile = "/dev/disk/by-id/usb-Generic_Flash_Disk_B7CFEC07-0:0";
      };
      luks-621a0289-691b-4396-aac1-f22930556f27 = {
        device = "/dev/disk/by-uuid/621a0289-691b-4396-aac1-f22930556f27";
        fallbackToPassword = true;
        keyFileSize = 40960;
        keyFile = "/dev/disk/by-id/usb-Generic_Flash_Disk_B7CFEC07-0:0";
      };
    };
  };

  networking.hostName = "baal";

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "20.09"; # Did you read the comment?

}
