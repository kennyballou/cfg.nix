# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usb_storage" "usbhid" "sd_mod" "sr_mod" ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/b9019bd0-f3e9-4ca7-b4ce-6501bb9375ca";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/F1C8-D159";
      fsType = "vfat";
    };

  fileSystems."/nix" =
    { device = "/dev/disk/by-uuid/cae6ee5b-7018-4b5a-bd1d-f1e332bf716a";
      fsType = "xfs";
    };

  fileSystems."/guix" =
    { device = "/dev/disk/by-uuid/af35eb7e-4cb0-474b-b484-ced68d1a3376";
      fsType = "xfs";
    };

  fileSystems."/opt" =
    { device = "/dev/disk/by-uuid/0a128753-562f-49bb-a777-a652b40df00e";
      fsType = "ext4";
    };

  fileSystems."/var" =
    { device = "/dev/disk/by-uuid/e3cee56f-f7cc-4057-97da-d87aee15e013";
      fsType = "ext4";
    };

  fileSystems."/var/lib/docker" =
    { device = "/dev/disk/by-uuid/a3f59b43-08d0-40dc-be35-a459644843d6";
      fsType = "btrfs";
    };

  fileSystems."/home" =
    { device = "/dev/disk/by-uuid/ab6dfc76-2a9c-4ba5-937c-9a76659d5113";
      fsType = "xfs";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/3aa22856-74ad-49a2-a606-9a1562fc9ffc"; }
    ];

  nix.maxJobs = lib.mkDefault 32;
}