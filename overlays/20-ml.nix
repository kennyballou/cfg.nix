self: super:
{
  ml-overlay = super.buildEnv {
    name = "ml-overlay";
    ignoreCollisions = true;
    paths = [
      self.ocaml
    ];
  };
}
