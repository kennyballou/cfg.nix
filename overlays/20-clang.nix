self: super:
{
  clang-overlay = super.buildEnv {
    name = "clang-overlang";
    ignoreCollisions = true;
    paths = [
      self.clang
      self.clang-tools
      self.llvm
    ];
  };
}
