{ config, pkgs, ... }:
{
  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
    };
    containers.containersConf.settings = {
      engine.runtimes = {
        runc = [
          "${pkgs.runc}"
        ];
        crun = [
          "${pkgs.crun}"
        ];
      };
    };
    oci-containers.backend = "podman";
  };
}
