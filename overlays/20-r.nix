self: super:
{
  r-overlay = super.buildEnv {
    name = "r-overlay";
    ignoreCollisions = true;
    paths = [
      self.R
    ];
  };
}
