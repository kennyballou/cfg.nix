self: super:
{
  nixOverlay = super.buildEnv {
    name = "nixOverlay";
    ignoreCollisions = true;
    paths = [
      self.nix-bash-completions
      self.nix-index
      self.nix-prefetch-git
      self.nix-prefetch-github
      self.nix-review
      self.nix-top
      self.nix-zsh-completions
    ];
  };
}
