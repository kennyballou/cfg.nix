self: super:
{
  phpOverlay = super.buildEnv {
    name = "phpOverlay";
    ignoreCollisions = true;
    paths = [
      self.php
      self.phpPackages.apcu
      self.phpPackages.composer
    ];
  };
}
