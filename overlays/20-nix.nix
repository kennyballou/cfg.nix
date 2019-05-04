self: super:
{
  nixOverlay = super.buildEnv {
    name = "nixOverlay";
    paths = [
      self.nix-bash-completions
      self.nix-delegate
      self.nix-deploy
      self.nix-diff
      self.nix-diff
      self.nix-index
      self.nix-prefetch-git
      self.nix-prefetch-github
      self.nix-review
      self.nix-top
      self.nix-zsh-completions
    ];
  };
}
