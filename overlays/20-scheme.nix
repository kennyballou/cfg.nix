self: super:
{
  scheme-overlay = super.buildEnv {
    name = "scheme-overlay";
    paths = [
      self.guile
      self.guile-lint
      self.racket
    ];
  };
}
