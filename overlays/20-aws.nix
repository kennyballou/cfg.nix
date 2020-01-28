self: super:
{
  aws-overlay = super.buildEnv {
    name = "aws-overlay";
    paths = [
      self.awscli
      self.python37Packages.boto3
    ];
  };
}
