self: super:
{
  linux-overlay = self.buildEnv {
    name = "linux-overlay";
    ignoreCollisions = true;
    paths = [
       self.linuxPackages.perf
    ];
  };
}
