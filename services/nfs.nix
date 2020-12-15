{ ... }:
{
  services.nfs.server = {
    enable = true;
    exports = ''
    /srv/documents 10.0.0.0/8(rw,sync)
    /srv/downloads 10.0.0.0/8(rw,sync)
    /srv/music     10.0.0.0/8(rw,sync)
    /srv/pictures  10.0.0.0/8(rw,sync)
    /srv/public    10.0.0.0/8(rw,sync)
    /srv/sync      10.0.0.0/8(rw,sync)
    /srv/videos    10.0.0.0/8(rw,sync)
    /srv/workspace 10.0.0.0/8(rw,sync)
    '';
  };
}
