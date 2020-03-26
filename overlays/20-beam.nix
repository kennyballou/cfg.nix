self: super:
{
  beam-overlay = super.buildEnv {
    name = "beam-overlay";
    ignoreCollisions = true;
    paths = [
      self.elixir
      self.erlang
    ];
  };
}
