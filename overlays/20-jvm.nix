self: super:
{
  jvmOverlay = super.buildEnv {
    name = "jvmOverlay";
    paths = [
      self.ammonite
      self.ant
      self.aspectj
      self.maven
      self.gradle
      self.jmeter
      self.openjdk
      self.sbt
      self.scala
      self.scalafmt
    ];
  };
}
