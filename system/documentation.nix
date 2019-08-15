{ config, pkgs, ... }:
{
  documentation = {
    dev.enable = true;
    doc.enable = true;
    info.enable = true;
    man.enable = true;
    nixos.enable = true;
  };
}
