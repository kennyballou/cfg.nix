self: super:
{
  elmOverlay = self.buildEnv {
    name = "elmOverlay";
    paths = [
      self.elmPackages.elm
      self.elmPackages.elm-format
    ];
  };
}
