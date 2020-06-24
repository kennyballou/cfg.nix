self: super:
{
  fontsOverlay = super.buildEnv {
    name = "fontsOverlay";
    ignoreCollisions = true;
    paths = [
      self.carlito
      self.dejavu_fonts
      self.ipafont
      self.kochi-substitude
      self.noto-fonts
      self.source-code-pro
      self.symbola
      self.ttf_bistream_vera
    ];
  };
}
