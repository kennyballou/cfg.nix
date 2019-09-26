self: super:
{
  beam-overlay = super.buildEnv {
    name = "beam-overlay";
    paths = [
      self.elixir
      self.erlang
    ];
  };
}
