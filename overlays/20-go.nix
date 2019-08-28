self: super:
{
  goOverlay = super.buildEnv {
    name = "goOverlay";
    paths = [
      self.delve
      self.glide
      self.go_1_12
      self.gocode
      self.godef
      self.golint
      self.go2nix
      self.gotools
    ];
  };
}
