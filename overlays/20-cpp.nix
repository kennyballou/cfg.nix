self: super:
{
  cppOverlay = super.buildEnv {
    name = "cppOverlay";
    paths = [
      self.boost
      self.clang-tools
      self.cmake
      self.cppcheck
      self.gdb
      self.libcxx
      self.libcxxabi
      self.stdman
      self.valgrind
    ];
  };
}
