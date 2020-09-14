self: super:
let
  maven = (super.pkgs.maven.override {
    jdk = self.jdk11;
  });
  leiningen = (super.pkgs.leiningen.override {
    jdk = self.jdk11;
  });
in {
  jvmOverlay = super.buildEnv {
    name = "jvmOverlay";
    ignoreCollisions = true;
    paths = [
      self.ammonite
      self.ant
      self.aspectj
      #self.clj-kondo
      self.clojure
      self.clojure-lsp
      self.gradle
      self.jdk11
      self.jmeter
      leiningen
      maven
      self.sbt
      self.scala
      self.scalafmt
    ];
  };
}
