{ config, pkgs, ... }:
{
  # Enable CUPS to print documents.
  services.printing = {
    enable = true;
    startWhenNeeded = true;
    drivers = with pkgs; [ gutenprint hplip ];
  };
}
