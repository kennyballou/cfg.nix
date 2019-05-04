self: super:
{
  jsOverlay = super.buildEnv {
    name = "jsOverlay";
    paths = [
      self.nodePackages.csslint
      self.nodePackages.eslint
      self.nodePackages.js-beautify
      self.nodejs
      self.yarn
    ];
  };
}
