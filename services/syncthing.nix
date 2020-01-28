{ config, ... }:
{
  services.syncthing = {
    all_proxy = null;
    enable = true;
    dataDir = /home/kb;
    configDir = /home/kb/.config/syncthing;
    group = "users";
    user = "kb";
    systemService = true;
    declarative.folders = {
      "sync-root" = {
        label = "sync";
        id = "sync-root";
        path = "/home/kb/sync";
        ignorePerms = false;
        devices = [ ];
      };
    };
  };
}
