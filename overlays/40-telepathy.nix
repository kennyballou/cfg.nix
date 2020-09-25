self: super:
{
  telepathy-overlay = super.buildEnv {
    name = "telepathy-overlay";
    ignoreCollisions = true;
    paths = [
      self.profanity
      self.slack
      self.telepathy-mission-control
      self.telepathy-gabble
      self.telepathy-idle
      self.telepathy-haze
      self.telepathy-logger
      self.telepathy-farstream
      self.zoom-us
    ];
  };
}
