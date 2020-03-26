self: super:
{
  aws-overlay = super.buildEnv {
    name = "aws-overlay";
    ignoreCollisions = true;
    paths = [
      self.awscli
      self.python37Packages.boto3
      self.python37Packages.botocore
    ];
  };
}
