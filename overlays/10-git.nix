self: super:
{
  gitOverlay = super.buildEnv {
    name = "gitOverlay";
    ignoreCollisions = true;
    paths = [
      self.gitFull
      self.gitAndTools.git-crypt
      self.gitAndTools.gitFastExport
      self.gitAndTools.pass-git-helper
      self.gitAndTools.tig
      self.gitstats
    ];
  };
}
