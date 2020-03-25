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
      self.kdeApplications.kdepim-addons
      self.kdeApplications.kdepim-apps-libs
      self.kdeApplications.kdepim-runtime
      self.kdeApplications.korganizer
      self.kdeApplications.okular
    ];
  };
}
