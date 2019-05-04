self: super:
{
  jvmOverlay = super.bulidEnv {
    name = "jvmOverlay";
    paths = [
      self.ammonite
      self.ant
      self.maven
      self.jmeter
      self.openjdk
      self.sbt
      self.scala
      self.scalafmt
    ];
  };
}
