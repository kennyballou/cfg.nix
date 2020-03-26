self: super:
{
  elmOverlay = self.buildEnv {
    name = "elmOverlay";
    ignoreCollisions = true;
    paths = [
      self.elmPackages.elm
      self.elmPackages.elm-format
    ];
  };
}
