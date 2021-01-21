{ pkgs, ... }:
{
  hardware.opengl = {
    enable = true;
    driSupport = true;
    extraPackages = with pkgs; [
      vaapiIntel
      vaapiVdpau
      libvdpau-va-gl
      intel-ocl
      intel-media-driver
    ];
  };
}
