{ config, pkgs, ... }:
{
  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
    };
    containers.containersConf.extraConfig = ''
      [engine.runtimes]
      runc = [
         "${pkgs.runc}"
      ]
      crun = [
        "${pkgs.crun}"
      ]
    '';
    oci-containers.backend = "podman";
  };
}
