self: super:
{
  rustOverlay = super.buildEnv {
    name = "rustOverlay";
    ignoreCollisions = true;
    paths = [
      self.cargo
      self.cargo-tree
      self.cargo-update
      self.rustc
      self.rustracer
    ];
  };
}
