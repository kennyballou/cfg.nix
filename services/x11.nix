{ config, ... }:
{
  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    layout = "us";
    xkbOptions = "compose:ralt,terminate:ctrl_alt_bksp,ctrl:nocaps";
  };
}
