self: super:
{
  guileOverlay = super.buildEnv {
    name = "guileOverlay";
    paths = [
      self.guile
      self.guile-lint
    ];
  };
}
