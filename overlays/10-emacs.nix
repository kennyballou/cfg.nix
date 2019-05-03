self: super:
let

  emacsWithPkgs = self.emacsWithPackages
    (import ./emacs/packages.nix { epkgs = self.emacsPackages; });

  in {

    emacsToolsEnv = super.buildEnv {
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