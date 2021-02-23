self: super:
{
  nixOverlay = super.buildEnv {
    name = "nixOverlay";
    ignoreCollisions = true;
    paths = with self; [
      nix-bash-completions
      nix-index
      nix-prefetch-git
      nix-prefetch-github
      nix-review
      nix-top
      nix-zsh-completions
    ];
  };
}
