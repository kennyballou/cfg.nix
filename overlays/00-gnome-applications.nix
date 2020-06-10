self: super:
{
  gnome-applications = self.buildEnv {
    name = "gnome-applications";
    ignoreCollisions = true;
    paths = [
      self.gnome3.gnome-tweak-tool
      self.gnome3.gnome-themes-extra
      self.gnome3.gnome-themes-standard
    ];
  };
}
