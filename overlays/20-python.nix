self: super:
{
  pythonOverlay = super.buildEnv {
    name = "pythonOverlay";
    paths = [
      self.python3
      self.python37Packages.gprof2dot
      self.python37Packages.setuptools
      self.python37Packages.flake8
      self.python37Packages.pyflakes
      self.python3Packages.pip
      self.python3Packages.virtualenv
    ];
  };
}
