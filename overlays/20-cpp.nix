self: super:
{
  cppOverlay = super.buildEnv {
    name = "cppOverlay";
    paths = [
      self.boost
      self.cmake
      self.cppcheck
      self.cscope
      self.gcc
      self.gdb
      self.libcxx
      self.libcxxabi
      self.stdman
      self.valgrind
    ];
  };
}
