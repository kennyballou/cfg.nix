self: super:
let
  jdk = self.pkgs.jdk11;
  maven = (super.pkgs.maven.override {
    jdk = jdk;
  });
  leiningen = (super.pkgs.leiningen.override {
    jdk = jdk;
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
      jdk
      self.jmeter
      leiningen
      maven
      self.sbt
      self.scala
      self.scalafmt
    ];
  };
}
