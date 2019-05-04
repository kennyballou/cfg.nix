self: super:
{
  phpOverlay = super.buildEnv {
    name = "phpOverlay";
    paths = [
      self.php
      self.phpPackages.apcu
      self.phpPackages.composer
    ];
  };
}
