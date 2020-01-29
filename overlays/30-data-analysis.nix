self: super:
{
  data-analysis-overlay = super.buildEnv {
    name = "data-analysis";
    paths = [
      self.python3
      self.python37Packages.ipdb
      self.python37Packages.ipython
      self.python37Packages.matplotlib
      self.python37Packages.numpy
      self.python37Packages.pandas
      self.python37Packages.scipy
    ];
  };
}
