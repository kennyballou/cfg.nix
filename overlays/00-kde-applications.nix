self: super:
{
  kde-applications = self.buildEnv {
    name = "kde-applications";
    ignoreCollisions = true;
    paths = [
      self.kde-gtk-config
      self.kdeplasma-addons
      self.kdeApplications.akonadi
      self.kdeApplications.akonadi-calendar
      self.kdeApplications.akonadi-contacts
      self.kdeApplications.akonadi-mime
      self.kdeApplications.akonadi-notes
      self.kdeApplications.akonadi-search
      self.kdeApplications.akonadiconsole
      self.kdeApplications.ark
      self.kdeApplications.dolphin
      self.kdeApplications.dolphin-plugins
      self.kdeApplications.gwenview
      self.kdeApplications.kaddressbook
      self.kdeApplications.kalarm
      self.kdeApplications.kalarmcal
      self.kdeApplications.kcachegrind
      self.kdeFrameworks.kcontacts
      self.kdeApplications.kcharselect
      self.kdeApplications.kdav
      self.kdeApplications.kdenetwork-filesharing
      self.kdeApplications.kdepim-apps-libs
      self.kdeApplications.kdepim-runtime
      self.kdeApplications.kidentitymanagement
      self.kdeApplications.kimap
      self.kdeApplications.kio-extras
      self.kdeApplications.kmbox
      self.kdeApplications.kmime
      self.kdeApplications.kmplot
      self.kdeApplications.korganizer
      self.kdeApplications.kompare
      self.kdeApplications.libkdepim
      self.kdeApplications.okular
      self.kdeApplications.pimcommon
      self.kdeApplications.ksmtp
      self.kdeApplications.spectacle
      self.plasma5.plasma-browser-integration
      self.plasma5.user-manager
    ];
  };
}
