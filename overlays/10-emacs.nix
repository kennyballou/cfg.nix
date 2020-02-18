self: super:
let

  emacs = (super.pkgs.emacs.override {
    # enable lucid
    withGTK3 = false;
    withGTK2 = false;
    # enable imagemagick
    imagemagick = self.pkgs.imagemagick;
  });
  emacsWithPkgs = (self.emacsPackagesGen emacs).emacsWithPackages
    (import ./emacs/packages.nix { epkgs = self.emacsPackages; });

  in {

    emacsOverlay = super.buildEnv {
      name = "emacsTools";
      paths = [
        emacsWithPkgs
        self.mu
        self.multimarkdown
        self.poppler
        self.imagemagick
        self.librsvg
        self.haskellPackages.pandoc
      ];
    };
  }
