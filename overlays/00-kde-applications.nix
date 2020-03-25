self: super:
{
  kde-applications = self.buildEnv {
    name = "kde-applications";
    ignoreCollisions = true;
    paths = [
      self.kde-gtk-config
      self.kdeApplications.akonadi
      self.kdeApplications.ark
      self.kdeApplications.gwenview
      self.kdeApplications.kcachegrind
      self.kdeApplications.korganizer
      self.kdeApplications.okular
    ];
  };
}
