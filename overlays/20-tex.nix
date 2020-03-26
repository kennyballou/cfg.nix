self: super:
{
  tex-overlay = super.buildEnv {
    name = "tex-overlay";
    ignoreCollisions = true;
    paths = [
      self.pygmentex
      self.texlive.combined.scheme-full
    ];
  };
}
