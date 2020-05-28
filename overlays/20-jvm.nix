self: super:
{
  jvmOverlay = super.buildEnv {
    name = "jvmOverlay";
    ignoreCollisions = true;
    paths = [
      self.ammonite
      self.ant
      self.aspectj
      self.clj-kondo
      self.clojure
      self.clojure-lsp
      self.gradle
      self.jdk11
      self.jmeter
      self.leiningen
      self.maven
      self.sbt
      self.scala
      self.scalafmt
    ];
  };
}
