self: super:
{
  langOverlay = self.buildEnv {
    name = "langOverlay";
    paths = [
      self.autoconf
      self.autogen
      self.automake
      self.doxygen
      self.global
      self.gnum4
      self.gnumake
      self.lcov
      self.libtool
      self.pkgconfig
    ];
  };
}
