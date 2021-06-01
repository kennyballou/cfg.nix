self: super:
{
  kde-applications = self.buildEnv {
    name = "kde-applications";
    ignoreCollisions = true;
    paths = with self.libsForQt5; [
      kde-gtk-config
      kdeplasma-addons
      akonadi
      akonadi-calendar
      akonadi-contacts
      akonadi-mime
      akonadi-notes
      akonadi-search
      akonadiconsole
      ark
      dolphin
      dolphin-plugins
      gwenview
      kaccounts-integration
      #kaccounts-providers
      kaddressbook
      kalarm
      kalarmcal
      kcachegrind
      kcontacts
      kcharselect
      kdav
      kdeconnect-kde
      kdenetwork-filesharing
      kdepim-runtime
      kdegraphics-thumbnailers
      kidentitymanagement
      kimap
      kio-extras
      kmbox
      kmix
      kmime
      kmplot
      korganizer
      kompare
      libkdepim
      okular
      pimcommon
      ksmtp
      spectacle
      yakuake
    ];
  };
}
