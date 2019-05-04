self: super:
{
  langOverlay = self.buildEnv {
    name = "langOverlay";
    paths = [
      self.autoconf
      self.autogen
      self.automake
      self.global
      self.gnum4
      self.gnumake
      self.libtool
      self.pkgconfig
    ];
  };
}
