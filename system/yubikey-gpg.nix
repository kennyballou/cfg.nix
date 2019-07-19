{ config, lib, pkgs, ... }:
{
  programs.ssh.startAgent = false;

  services.udev.packages = with pkgs; [
    yubikey-personalization
  ];

  services.pcscd.enable = true;

}
