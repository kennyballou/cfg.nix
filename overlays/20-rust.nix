self: super:
{
  rustOverlay = super.buildEnv {
    name = "rustOverlay";
    paths = [
      self.cargo
      self.cargo-tree
      self.cargo-update
      self.rustc
      self.rustracer
    ];
  };
}
