self: super:
let

  emacs = (super.pkgs.emacs.override {
    # enable lucid
    withGTK3 = false;
    withGTK2 = false;
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
        self.haskellPackages.pandoc
      ];
    };
  }
