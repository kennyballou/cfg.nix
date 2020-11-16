self: super:
{
  gnome-applications = self.buildEnv {
    name = "gnome-applications";
    ignoreCollisions = true;
    paths = [
      self.gnome3.gnome-autoar
      self.gnome3.gnome-boxes
      self.gnome3.gnome-shell-extensions
      self.gnome3.gnome-tweak-tool
      self.gnome3.gnome-themes-extra
      self.gnome3.gnome-themes-standard
      self.gnome3.gucharmap
    ];
  };
}
