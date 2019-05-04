self: super:
{
  virtualizationOverlay = super.buildEnv {
    name = "virtualizationOverlay";
    paths = [
      self.docker
      self.docker-compose
      self.qemu
    ];
  };
}
