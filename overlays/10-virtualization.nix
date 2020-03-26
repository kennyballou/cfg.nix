self: super:
{
  virtualizationOverlay = super.buildEnv {
    name = "virtualizationOverlay";
    ignoreCollisions = true;
    paths = [
      self.docker
      self.docker-compose
      self.qemu
    ];
  };
}
