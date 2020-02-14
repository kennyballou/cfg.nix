self: super:
{
  clang-overlay = super.buildEnv {
    name = "clang-overlang";
    paths = [
      self.clang
      self.clang-tools
      self.llvm
    ];
  };
}
