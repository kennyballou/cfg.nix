self: super:
{
  jsOverlay = super.buildEnv {
    name = "jsOverlay";
    ignoreCollisions = true;
    paths = [
      self.nodePackages.csslint
      self.nodePackages.eslint
      self.nodePackages.js-beautify
      self.nodejs
      self.yarn
    ];
  };
}
