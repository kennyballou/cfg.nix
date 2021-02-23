self: super:
{
  linux-overlay = self.buildEnv {
    name = "linux-overlay";
    ignoreCollisions = true;
    paths = with self;[
       linuxPackages.perf
    ];
  };
}
