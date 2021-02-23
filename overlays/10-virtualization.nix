self: super:
{
  virtualizationOverlay = super.buildEnv {
    name = "virtualizationOverlay";
    ignoreCollisions = true;
    paths = with self; [
      docker
      docker-compose
      qemu
    ];
  };
}
