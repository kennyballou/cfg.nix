self: super:
{
  tex-overlay = super.buildEnv {
    name = "tex-overlay";
    paths = [
      self.pygmentex
      self.texlive.combined.scheme-full
    ];
  };
}
