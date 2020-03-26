self: super:
{
  jvmOverlay = super.buildEnv {
    name = "jvmOverlay";
    ignoreCollisions = true;
    paths = [
      self.ammonite
      self.ant
      self.aspectj
      self.maven
      self.gradle
      self.jmeter
      self.jdk11
      self.sbt
      self.scala
      self.scalafmt
    ];
  };
}
