self: super:
{
  gnome-applications = self.buildEnv {
    name = "gnome-applications";
    ignoreCollisions = true;
    paths = with self; [
      gnome3.gnome-autoar
      gnome3.gnome-boxes
      gnome3.gnome-dictionary
      gnome3.evolution-data-server
      gnome3.evolution
      gnome3.gnome-shell-extensions
      gnome3.gnome-tweak-tool
      gnome3.gnome-themes-extra
      gnome3.gnome-themes-standard
      gnome3.gucharmap
      gnomeExtensions.sound-output-device-chooser
    ];
  };
}
