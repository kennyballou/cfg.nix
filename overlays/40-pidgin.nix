self: super:
{
  pidgin-overlay = super.buildEnv {
    name = "pidgin-overlay";
    ignoreCollisions = true;
    paths = [
      self.pidgin
      self.pidgin-carbons
      self.pidgin-latex
      self.pidgin-xmpp-receipts
      self.purple-hangouts
      self.purple-matrix
      self.purple-plugin-pack
      self.skype4pidgin
      self.toxprpl
    ];
  };
}
