self: super:
{
  gitOverlay = super.buildEnv {
    name = "gitOverlay";
    paths = [
      self.git
      self.gitAndTools.git-crypt
      self.gitAndTools.gitFastExport
      self.gitAndTools.pass-git-helper
      self.gitAndTools.tig
      self.gitstats
    ];
  };
}
