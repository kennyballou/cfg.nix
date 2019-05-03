{ config, ... }:
{
  services.emacs = {
    enable = false;
    install = true;
    defaultEditor = true;
  };
}
