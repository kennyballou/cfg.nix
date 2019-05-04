self: super:
{
  pythonOverlay = super.buildEnv {
    name = "pythonOverlay";
    paths = [
      self.python2
      self.python27Packages.certifi
      self.python27Packages.pygments
      self.python27Packages.setuptools
      self.python3
      self.python37Packages.gprof2dot
      self.python37Packages.ipdb
      self.python37Packages.ipython
      self.python37Packages.setuptools
      self.python3Packages.pip
      self.pythonDocs.html.python27
      self.pythonDocs.pdf_letter.python27
    ];
  };
}
