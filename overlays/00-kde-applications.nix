self: super:
{
  kde-applications = self.buildEnv {
    name = "kde-applications";
    ignoreCollisions = true;
    paths = with self; [
      kde-gtk-config
      kdeplasma-addons
      kdeApplications.akonadi
      kdeApplications.akonadi-calendar
      kdeApplications.akonadi-contacts
      kdeApplications.akonadi-mime
      kdeApplications.akonadi-notes
      kdeApplications.akonadi-search
      kdeApplications.akonadiconsole
      kdeApplications.ark
      kdeApplications.dolphin
      kdeApplications.dolphin-plugins
      kdeApplications.gwenview
      kdeApplications.kaddressbook
      kdeApplications.kalarm
      kdeApplications.kalarmcal
      kdeApplications.kcachegrind
      kdeFrameworks.kcontacts
      kdeApplications.kcharselect
      kdeApplications.kdav
      kdeApplications.kdenetwork-filesharing
      kdeApplications.kdepim-apps-libs
      kdeApplications.kdepim-runtime
      kdeApplications.kidentitymanagement
      kdeApplications.kimap
      kdeApplications.kio-extras
      kdeApplications.kmbox
      kdeApplications.kmime
      kdeApplications.kmplot
      kdeApplications.korganizer
      kdeApplications.kompare
      kdeApplications.libkdepim
      kdeApplications.okular
      kdeApplications.pimcommon
      kdeApplications.ksmtp
      kdeApplications.spectacle
      plasma5.plasma-browser-integration
      plasma5.user-manager
    ];
  };
}
