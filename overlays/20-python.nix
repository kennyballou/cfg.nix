self: super:
{
  pythonOverlay = super.buildEnv {
    name = "pythonOverlay";
    paths = [
      self.python3
      self.python37Packages.gprof2dot
      self.python37Packages.ipdb
      self.python37Packages.ipython
      self.python37Packages.setuptools
      self.python3Packages.pip
    ];
  };
}
