self: super:
{
  scheme-overlay = super.buildEnv {
    name = "scheme-overlay";
    ignoreCollisions = true;
    paths = [
      self.guile
      self.guile-lint
      self.racket
    ];
  };
}
